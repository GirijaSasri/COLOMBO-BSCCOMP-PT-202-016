//
//  HomeDeatilView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-07.
//

import SwiftUI

struct HomeDeatilView: View {
    var body: some View {
        VStack{
            ZStack{
                Color("HomePageBackgroud")
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    Image("DemoHouseImage_1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .edgesIgnoringSafeArea(.top)
                    
                    DetailView()
                        .offset(y:-40)
                    
                    
                }
                
                
            }
        }

    }
}

struct HomeDeatilView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDeatilView()
    }
}

struct DetailView: View {
    var body: some View {
        VStack(alignment:.leading ){
            Text("Marada House")
                .font(.title)
                .fontWeight(.bold)
            
            HStack(spacing:4){
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Image("StarIcon")
                }
                Text("(3.0)")
                    .opacity(0.4)
                    .padding(.leading,8)
                Spacer()
            }
            
            Text("Geo Location")
                .fontWeight(.medium)
                .padding(.vertical)
            Text("space for the geo location.space for the geo location.space for the geo location.space for ")
                .lineSpacing(8.0)
                .opacity(0.6)
            
            HStack{
                VStack(alignment:.leading){
                    Text("Land / House")
                    .fontWeight(.semibold)
                    Text("Commerical property")
                        .opacity(0.5)
                    Text("Commerical property")
                        .opacity(0.5)
                    
                }
                 
                VStack(alignment: .leading){
                    Text("Land Size")
                        .fontWeight(.semibold)
                    
                    Text("25 Perch")
                        .opacity(0.5)
                       
                       
                    
                }
            }
            .padding(.vertical)
            
            
        }
        .padding()
        .padding(.top)
        .background(Color("HomePageBackgroud"))
        .cornerRadius(40.0)
    }
}
