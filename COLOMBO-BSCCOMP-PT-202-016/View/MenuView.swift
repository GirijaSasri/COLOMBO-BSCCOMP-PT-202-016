//
//  MenuView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-10.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        VStack(alignment: .leading ){
            HStack{
                Image("HomeIcon")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("ome PAge")
                    .foregroundColor(.black)
                    .font(.headline)
                
            }
            .padding(.top,105)
            HStack{
                Image( "adsIcon")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("Seller Advertisement")
                    .foregroundColor(.black)
                    .font(.headline)
                
            }
            .padding(.top,105)
            HStack{
                Image( "SettingIcon")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("Settings Page")
                    .foregroundColor(.black)
                    .font(.headline)
                
            }
            .padding(.top,105)
            
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
