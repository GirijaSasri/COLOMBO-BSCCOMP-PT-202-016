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
            
            
            .accentColor(.blue)
            .navigationTitle("Create Advertisement")
            
          
       }
    }
}

struct SellerAdvertisementView_Previews: PreviewProvider {
    static var previews: some View {
        SellerAdvertisementView()
    }
}
}