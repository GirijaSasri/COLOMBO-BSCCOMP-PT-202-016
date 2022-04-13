//
//  HomePageView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-07.
//

import SwiftUI


struct HomePageView: View {
    
  
    
    var body: some View {
        
      
        VStack {
            navbarsection()
        }
    //navigation bar
     
        
       

    }
    
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

struct AppBarView: View {
    var body: some View {
        HStack{
            Button(action:{}) {
                Image("menuicon")
                    .padding()
                    .background(Color(.white))
                    .cornerRadius(10.0)
            }
            
            Spacer()
            Button(action:{}) {
                Image("kusalIcon")
                    .resizable()
                    .frame(width: 42, height:42)
                    .cornerRadius(10.0)
            }
            
        }
        .padding(.horizontal)
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
            
//            HStack {
//                Image("SearchIcon")
//                    .padding(.trailing,8)
//                TextField("Search Property",text: $search)
//            }
//            .padding(.all,20)
//            .background(Color.white)
//            .cornerRadius(10.0)
//            .padding(.trailing)
//

            
        }
        .padding(.horizontal)
    }
}

struct ItemCardView: View {
    let image: Image
    let size:CGFloat
    var body: some View {
        VStack{
             image
                .resizable()
                .frame(width: size, height: 200 * (size/210))
                .cornerRadius(20.0)
            
            Text("Marada House")
                .font(.title3)
                .fontWeight(.bold)
            
            HStack(spacing: 2){
//                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
//                    Image("StarIcon")
//                }
//                Spacer()
                
                Text("RS50000")
                    .font(.title3)
                    .fontWeight(.bold)
                
            }
            
        }
        .frame(width:size)
        .padding()
        .background(Color.white)
        .cornerRadius(20.0)
    }
}

struct HomelayoutView: View {
    var body: some View {
        ZStack {
            ScrollView {
                ZStack{
                    Color("HomePageBackgroud")
                        .edgesIgnoringSafeArea(.all)
                    
                    VStack (alignment:.leading){
                        AppBarView()
                        
                        TagLingView()
                            .padding()
                        
                        LandSeacrhView()
                            .padding()
                        
                        VStack{
                            Text("Top Ads")
                                .fontWeight(.bold)
                                .font(.title2)
                                .foregroundColor(Color("BlackColor"))
                                .padding(.horizontal)
                            
                            ScrollView (.horizontal,showsIndicators: false){
                                HStack {
                                    ForEach(0 ..< 4) { index in
                                        ItemCardView(image:Image("DemoHouseImage_\(index + 1)"), size: 210)
                                    }
                                    .padding(.trailing)
                                }
                                .padding(.leading)
                            }
                            
                            Text("Trending Ads")
                                .fontWeight(.bold)
                                .font(.title2)
                                .foregroundColor(Color("BlackColor"))
                                .padding(.horizontal)
                                .padding(.leading)
                            
                            ScrollView (.horizontal,showsIndicators: false){
                                HStack {
                                    ForEach(0 ..< 4) { index in
                                        ItemCardView(image:Image("DemoHouseImage_\(index + 1)"), size: 180)
                                    }
                                    .padding(.trailing)
                                }
                                .padding(.leading)
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
            
        
            
                HStack{
                   
                            navigationbar(barimage:Image("HomeIcon")){}
                            navigationbar(barimage:Image("adsIcon")){}
                            navigationbar(barimage:Image("SettingIcon")){}
                            navigationbar(barimage:Image("LogoutIcon"))
                            {
                                
                                
                            }
                            
                        }
                        .padding()
                        .background(Color.white)
                    .frame(alignment: .bottom)
            
            
            
        }
    }
}
