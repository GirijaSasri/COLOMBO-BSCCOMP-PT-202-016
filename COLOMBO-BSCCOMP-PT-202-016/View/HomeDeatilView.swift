//
//  HomeDeatilView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-07.
//

import SwiftUI

struct HomeDeatilView: View {
    let ad:Advertisement
    var body: some View {
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
            HStack{
                Text("Rs.50000")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action:{},label:{
                    
                    Text("Home")
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10.0)
                    
                    
                })
                
            }
            .padding()
            .padding(.horizontal)
            .background(Color("AppTextColor"))
            .frame(maxHeight: .infinity,alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
       }
    }

//struct HomeDeatilView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeDeatilView(ad:Advertisement)
//        
//    }
//}

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
            
            HStack(alignment: .top){
                VStack(alignment:.leading){
                    Text("Land / House")
                        .fontWeight(.semibold)
                        .padding(.bottom,4)
                    Text("Commerical property")
                        .opacity(0.5)
                    Text("Commerical property")
                        .opacity(0.5)
                    
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                
                VStack(alignment: .leading){
                    Text("Land Size")
                        .fontWeight(.semibold)
                        .padding(.bottom,4)
                    Text("25 Perch")
                        .opacity(0.5)
                  
                }
                .frame(maxWidth: .infinity,alignment: .leading)
            }
            .padding(.vertical)
            
            HStack{
                VStack{
                    Text("District")
                        .fontWeight(.semibold)
                    Text("Colombo")
                        .opacity(0.5)
                    
                }
                
            }
       Spacer()
            
//            VStack(alignment: .leading) {
//                Text("Town / Village")
//                    .fontWeight(.semibold)
//            }
 
            
        }
        .padding()
        .padding(.top)
        .background(Color("HomePageBackgroud"))
        .cornerRadius(40.0)
        
    }
  
}

struct PricebarView: View {
    var body: some View {
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
            HStack{
                Text("Rs.50000")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action:{},label:{
                    
                    Text("Home")
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10.0)
                    
                    
                })
                
            }
            .padding()
            .padding(.horizontal)
            .background(Color("AppTextColor"))
            .frame(maxHeight: .infinity,alignment: .bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}
