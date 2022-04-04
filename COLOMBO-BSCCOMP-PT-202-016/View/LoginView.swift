//
//  LoginView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-03.
//

import SwiftUI

struct LoginView: View {
    @State var username=""
    @State var password=""
   
    
    var body: some View {
        NavigationView{
            
        
            
            VStack {
                Group{
                    Text("Login")
                        .font(.system( size: 32, weight: .bold))
                        .padding(.bottom)
                        .foregroundColor(.white)
                    
                    Text("login with your email and password")
                }.padding(.top, 100)
                .foregroundColor(.white)
                
                
                  
          HStack{
          
                TextField("Username", text: $username)
//                .padding(.all)
                  .font(.title2)
                  .foregroundColor(.white)
                 
                  
                
                }
          .padding()
          .background(Color.white.opacity(0.12))
          .cornerRadius(15)
          .padding(.horizontal)
                
                HStack{
           
                TextField("Password", text: $password)
//                .padding(.all)
                        .font(.title2)
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.white.opacity(0.12))
                .cornerRadius(15)
                .padding(.horizontal)
         
           
            
            
            Button(action:{
                
            }) {
            
                Text("Login")
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical)
                    .frame(width:UIScreen.main.bounds.width - 150)
                    .background(Color("button"))
                    .clipShape(Capsule())
                
            }
        
//            .padding()
//            .background(Color(red: 0, green: 0, blue: 0.5))
//            .clipShape(Capsule())
                
                Spacer()
                
                
            
            
            
        }
            .background(Color("AppTextColor").ignoresSafeArea(.all,edges: .all))
        }
       
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
