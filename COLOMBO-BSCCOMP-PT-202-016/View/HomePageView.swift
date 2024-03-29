//
//  HomePageView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-07.
//

import SwiftUI
import Firebase


struct HomePageView: View {
    var body: some View {
        VStack {
            navbarsection()
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

struct TagLingView: View {
    var body: some View {
        Text("Find The \nbest ")
            .fontWeight(.light)
            .font(.title)
            .foregroundColor(Color("black"))
        + Text("Property!")
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(Color("black"))
    }
}


struct LandSeacrhView: View {
    @State private var search: String = ""
    
    @State private var selection = "Districts"
    let districts = ["Colombo", "Ampara", "Anuradhapura", "Badulla", "Batticalo"]

    var body: some View {
        HStack{
            
            VStack {
                       Picker("Select A District", selection: $selection) {
                           ForEach(districts, id: \.self) {
                               Text($0)
                           }
                       }
                       .pickerStyle(.menu)

                   }
        }
        .padding(.horizontal)
    }
}

struct ItemCardView: View {
    let image: Image
    let ad:Advertisement
    let size:CGFloat
    var body: some View {
        VStack{
             image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
            
            Text(ad.title)
                .font(.title3)
                .fontWeight(.bold)
           
            HStack{
                Text("District:")
                Text(ad.district)
                .font(.title3)
            }

            HStack{
                Text("Rs:")
                Text(ad.price)
                .font(.title3)
            }

            HStack{
                Text("Size")
                Text(ad.size)
                .font(.title3)
            }


            HStack(spacing: 2){

            }
            
        }
        .frame(width:size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
}

struct HomelayoutView: View {
    @StateObject var homeViewModel = HomeViewModel()
    @StateObject var loginViewModdel = LoginViewModel()
    
    @State var isSignInActive = false
    @State var isHomeDetailsActive = false
    
    var body: some View {
        ZStack {
            ScrollView {
                ZStack{
                    Color("HomePageBackgroud")
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack (alignment:.leading){
                        TagLingView()
                            .padding()
                        
                        LandSeacrhView()
                            .padding()
                        
                        Text("Top Ads")
                            .fontWeight(.bold)
                            .font(.title2)
                            .foregroundColor(Color("BlackColor"))
                            .padding(.horizontal)
                        
                        if homeViewModel.isLoading {
                            VStack{
                                Spacer()
                                ProgressView()
                                
                                Spacer()
                            }
                        } else {
                            if loginViewModdel.isuserlogin {
                                ScrollView (.vertical,showsIndicators: false){
                                    ForEach(self.homeViewModel.ads, id: \.id){ ad in
                                        NavigationLink(destination: HomeDeatilView(ad:ad), isActive: $isHomeDetailsActive){
                                            Button(action:{isHomeDetailsActive = true}){
                                                ItemCardView(image:Image("DemoHouseImage_\(1)"),ad: ad, size: 210)
                                            }
                                            
                                        }
                                    }
                                }
                            } else {
                                NavigationLink(destination: LoginView(), isActive: $isSignInActive){
                                    Button(action:{
                                        isSignInActive = true
                                    }){
                                        ScrollView (.vertical,showsIndicators: false){
                                            ForEach(self.homeViewModel.ads, id: \.id){ ad in
                                                ItemCardView(image:Image("DemoHouseImage_\(1)"),ad: ad, size: 210)
                                                
                                            }
                                        }
                                        
                                    }
                                    
                                }
                              
                            }
                        }
                    }
                    
                }
            }
        }
        
    }
}

struct navigationbar: View {
    let barimage:Image
    let action:()->Void
    var body: some View {
        Button(action:action, label: {
            barimage
                .frame(maxWidth:.infinity)
        })
    }
}

struct navbarsection: View {

    var body: some View {
      
        
        VStack {
            HomelayoutView()
//                HStack{
//                        navigationbar(barimage:Image("HomeIcon")){}
//                        navigationbar(barimage:Image("adsIcon")){}
//                        navigationbar(barimage:Image("settingIcon")){}
//                        navigationbar(barimage:Image("LogoutIcon")){}
//
//                    }
//                    .padding()
//                    .background(Color.white)
//                    .frame(alignment: .bottom)
    }
    }
}
