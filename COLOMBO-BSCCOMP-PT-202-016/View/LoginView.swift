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
                    
                    Text("login with your email and password")
                }.padding(.top, 100)
                    
            TextField("Username", text: $username)
                .padding(.all)
           
            TextField("Password", text: $password)
                .padding(.all)
      
            Button(action:{
                
            }) {
                Text("Login")
            }
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .clipShape(Capsule())
                
                Spacer()
                
                
            
            
            
        }}
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
