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
    
    var body: some View {
        NavigationView{
        Form{
            
            Section(header:Text("Advertisement Infomation"))
            {
                TextField("Title",text: $title)
                TextField("Price",text: $price)
                VStack{
                    Picker(selection: $landhouse, label: Text("Land / House")) {
                                    ForEach(0 ..< types.count) {
                                        Text(self.types[$0])
                                    }
                                }
                }
                TextField("Land Size",text: $size)
                TextField("District",text: $district)
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
                TextField("Geo Location",text: $cageolocation)
                TextField("Property Image",text: $propertyimage)
                TextField("Deed Image",text: $deedimage)
            }
            
            
            Button(action:{},label:{
               
               
         
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
