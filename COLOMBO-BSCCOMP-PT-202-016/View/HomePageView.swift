//
//  HomePageView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-07.
//

import SwiftUI

struct HomePageView: View {
    
  
    
    var body: some View {
        ZStack{
        Color("HomePageBackgroud")
            .edgesIgnoringSafeArea(.all)
            
            VStack (alignment:.leading){
                AppBarView()
                
                TagLingView()
                    .padding()
                
                LandSeacrhView()
              
                
            }
            
        }
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
            .foregroundColor(Color("HomePageText"))
        + Text("Property!")
            .fontWeight(.bold)
            .font(.title)
            .foregroundColor(Color("HomePageText"))
    }
}

struct LandSeacrhView: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack {
                Image("SearchIcon")
                    .padding(.trailing,8)
                TextField("Search Property",text: $search)
            }
            .padding(.all,20)
            .background(Color.white)
            .cornerRadius(10.0)
            .padding(.trailing)
            
            
            Image("ScanIcon")
                .padding()
                .background(Color("HomePageText"))
                .cornerRadius(10.0)
            
        }
        .padding(.horizontal)
    }
}
