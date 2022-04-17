//
//  HomeTabView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-16.
//

import SwiftUI

struct HomeTabView: View {
    @StateObject var loginViewModdel = LoginViewModel()
    var body: some View {
       
        
        NavigationView{
        TabView {
                    HomePageView()
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }

            if loginViewModdel.isuserlogin{
               
                SellerAdvertisementView()
                    .tabItem {
                        Label("Order", systemImage: "square.and.pencil")
                    }
               SettingPageView()
                   .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
            }
            
            }
//            else {
//                SellerAdvertisementView()
//                    .tabItem {
//                        Label("Order", systemImage: "square.and.pencil")
//                    }
//               SettingPageView()
//                   .tabItem {
//                    Label("Order", systemImage: "square.and.pencil")
//            }
//            }
                  
            
            
                }
        
        .font(.headline)
        .navigationTitle("")
        .navigationBarHidden(true)
            
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
