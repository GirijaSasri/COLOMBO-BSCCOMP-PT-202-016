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
    @State var hasName: Bool = false
    
    @State var isSignUPInActive = false
   
    @StateObject var loginViewModel = LoginViewModel()
    var body: some View {
        
        NavigationView{
            
            VStack {
           
               VStack{
                    Text("Login")
                        .font(.system( size: 32, weight: .bold))
                        .padding(.bottom)
                        .foregroundColor(.white)
                    
                  Image("LoginLogo")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width:250)
                   
                    }
                       .padding(.top)
                       .padding(.bottom)
                       .foregroundColor(.white)
                
             
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
                    error = "username empty"
                }
                
                else if !self.isValidEmail(username) {
                    showAlert = true
                    error = "Email is invalid"
                    
                     }
                
                else if password.isEmpty {
                    showAlert = true
                    error = "pasword empty"
                }
                
                
                else if self.password.count < 8 {
                    showAlert = true
                    error = "Password should be 8 character long"
                }
                
                else  {
                    loginViewModel.login(email: username, password: password)
                    
                }
            }

            )
            
               {Text("Login")
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .padding(.vertical)
                    .frame(width:UIScreen.main.bounds.width - 150)
                    .background(Color("button"))
                    .clipShape(Capsule())
               }
               
                Button(action:{},label:{
                    
                    
                    Text("Forget Password?")
                        .foregroundColor(Color("button"))
              
                    }).padding(.top,8)
                
                
                Spacer()
                
                
                HStack(spacing:6){
                    
                    Text("Don't have a account")
                        .foregroundColor(Color.white.opacity(0.6))
                 
               
                    NavigationLink(destination: RegistrationView(), isActive: $isSignUPInActive){
                    Button(action:{
                        isSignUPInActive = true
                    },label:{
                        Text("Signup")
                            .fontWeight(.heavy)
                            .foregroundColor(Color("button"))
                        
                        
                    })
                    
                  }
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
                    title: Text("Login Error"),
                    message: Text(error)
                )
            }
        }
        .font(.headline)
        .navigationTitle("")
        .navigationBarHidden(true)
    
        
        
        
       
    }
    func re_home(){
        print("home")
    }
    
    private func isValidEmail(_ username: String) -> Bool {
          let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
          let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
          return emailPred.evaluate(with: username)
      }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
