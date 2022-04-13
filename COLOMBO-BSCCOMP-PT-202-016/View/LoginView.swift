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
  
    
    @State private var showAlert = false
    @State private var error = ""
   
    @StateObject var loginViewModel = LoginViewModel()
    var body: some View {
        
        NavigationView{
            
            VStack {
           
               VStack{
                    Text("Login")
                        .font(.system( size: 32, weight: .bold))
                        .padding(.bottom)
                        .foregroundColor(.white)
                    
//                    Text("Login With Your Email And Password")
                  Image("LoginLogo")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width:250)
                   
                    }
                       .padding(.top)
                       .padding(.bottom)
                       .foregroundColor(.white)
                
//             HStack{
//
//                TextField("Username", text: $username)
////                  .padding(.all)
//                    .font(.title2)
//                    .foregroundColor(.white)
//
//                  }
//                    .padding()
//                    .background(Color.white.opacity(0.12))
//                    .cornerRadius(15)
//                    .padding(.horizontal)
                
            AppTextFieldView(name: "Username", value: $username)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                
                    
                    
            HStack{
           
                SecureField("Password", text: $password)
//                  .padding(.all)
                    .font(.title2)

                    .foregroundColor(.white)
                    .autocapitalization(.none)
              
                
                }
                    .padding()
                    .background(Color.white.opacity(0.50))
                    .cornerRadius(15)
                    .padding(.horizontal)
         
           
            
            
            Button(action:{
                if username.isEmpty {
                    showAlert = true
                    error = "pasword empty"
                } else  {
                    loginViewModel.login(email: username, password: password)
                    
                }
                
            })
               {Text("Login")
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
                
                Button(action:{},label:{
                    
                    Text("Forget Password?")
                        .foregroundColor(Color("button"))
              
                    }).padding(.top,8)
                
                
                Spacer()
                
                
                HStack(spacing:6){
                    
                    Text("Don't have a account")
                        .foregroundColor(Color.white.opacity(0.6))
                 
                    Button(action:{},label:{
                        Text("Signup")
                            .fontWeight(.heavy)
                            .foregroundColor(Color("button"))
                        
                    })
                    
                    
                }
              
               
              }
            .background(Color("AppTextColor").ignoresSafeArea(.all,edges: .all))
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                  
                       
                    Button("Terms & Policy ", action: re_home)
                        .foregroundColor(Color.red)
                   
                }
                
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Restration Sucess"),
                    message: Text(error)
                )
            }
            
        
        }
   
    
        
        
        
       
    }
    func re_home(){
        print("home")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
