//
//  SellerAdvertisementView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-09.
//

import SwiftUI

struct SellerAdvertisementView: View {
    @State private var title = ""
    @State private var price = ""
    @State private var landhouse = 0
    var types = ["House", "Land"]
    @State private var size = ""
    @State private var district = ""
    @State private var townvillage = 0
    var parts = ["Town", "Village"]
    @State private var propertyimage = ""
    @State private var cageolocation = ""
    @State private var deedimage = ""
    
    @StateObject var sellerViewModule = SellerViewModel()
    
    @State private var showAlert = false
    @State private var error = ""
    
    var body: some View {
        NavigationView{
        Form{
            
            Section(header:Text("Advertisement Infomation"))
            {
                TextField("Title",text: $title)
                    .keyboardType(.alphabet)
                    .autocapitalization(.none)

                TextField("Price",text: $price)
                    .keyboardType(.numberPad)

                VStack{
                    Picker(selection: $landhouse, label: Text("Land / House")) {
                                    ForEach(0 ..< types.count) {
                                        Text(self.types[$0])
                                    }
                                }
                }
                TextField("Land Size",text: $size)
                    .keyboardType(.numberPad)

                TextField("District",text: $district)
                    .keyboardType(.alphabet)
                    .autocapitalization(.none)
                VStack{
                    Picker(selection: $townvillage, label: Text("Town / Village")) {
                                    ForEach(0 ..< parts.count) {
                                        Text(self.parts[$0])
                                    }
                                }
                }
                
            }
            
            Section(header:Text("Mandatory Infomation"))
            {
                TextField(" Location",text: $cageolocation)
                TextField("Property Image",text: $propertyimage)
                TextField("Deed Image",text: $deedimage)
            }
            
            
            Button(action:{
                if title.isEmpty {
                    showAlert = true
                    error = "Title Feild Should Not Be Empty"
                }
                
                if price.isEmpty {
                    showAlert = true
                    error = "Price Feild Should Not Be Empty"
                }
                if size.isEmpty {
                    showAlert = true
                    error = "Land Size Feild Should Not Be Empty"
                }
                if district.isEmpty {
                    showAlert = true
                    error = "District Feild Should Not Be Empty"
                }
                
                
                sellerViewModule.Seller(title:title,price: price,landhouse:landhouse,size:size,district:district,townvillage:townvillage)
               
            
            },label:{
               
               
         
                    Text("Create")
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .frame(width:UIScreen.main.bounds.width-70)
                    .padding(.vertical)
                    .background(Color("button"))
                    .clipShape(Capsule())
                    
               
                
                
            })
            
            
       }
        .accentColor(.blue)
        .navigationTitle("Create AD")
        .toolbar{
            Button("Home",action: home)
            .foregroundColor(Color.red)
           
        }
        
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Create AD Error"),
                message: Text(error)
            )
        }
           
        
            
            
          
    }
        
        
      
//
        
}
    func home()
    {
        print("Back")
    }

struct SellerAdvertisementView_Previews: PreviewProvider {
    static var previews: some View {
        SellerAdvertisementView()
        
    }
    
}
}
