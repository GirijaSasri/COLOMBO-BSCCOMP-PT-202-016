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
                
                Text("Home Page")
                    .foregroundColor(.black)
                    .font(.title3)
                
            }
            .padding(.top,105)
            HStack{
                Image( "adsIcon")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("Seller Advertisement")
                    .foregroundColor(.black)
                    .font(.title3)
                
            }
            .padding(.top,35)
            HStack{
                Image( "SettingIcon")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("Settings Page")
                    .foregroundColor(.black)
                    .font(.title3)
                
            }
            .padding(.top,35)
//            Spacer()
            
            HStack{
                Image( "LogoutIcon")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("Logout")
                    .foregroundColor(.black)
                    .font(.title3)
                
            }
            .padding(.top,35)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("HomePageBackgroud"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
