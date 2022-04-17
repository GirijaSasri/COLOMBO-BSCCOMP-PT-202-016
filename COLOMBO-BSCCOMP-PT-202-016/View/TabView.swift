//
//  TabView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-16.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
                    HomePageView()
                        .tabItem {
                            Label("Menu", systemImage: "list.dash")
                        }

                    SellerAdvertisementView()
                        .tabItem {
                            Label("Order", systemImage: "square.and.pencil")
                        }
                }
        .font(.headline)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
