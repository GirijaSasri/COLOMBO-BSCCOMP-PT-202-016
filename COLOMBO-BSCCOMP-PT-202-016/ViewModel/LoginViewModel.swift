//
//  LoginViewModel.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-03.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject
{
    @Published var isActiveLoginHome = false
    let auth = Auth.auth()
    private var loginService:LoginServiceProtocol
    
    init(loginService: LoginServiceProtocol = LoginService()) {
        self.loginService = loginService
    }
   
    var isSignedIn: Bool
    {
    
        return auth.currentUser != nil
    }
    
    func login(email:String,password:String)
    {
        loginService.userLogin(email: email, password: password) { result in
                    switch result {
                    case .success:
                        print(result)
                        self.isActiveLoginHome = true
                        print("success")
                    case let .failure(error) :
                        print(error.localizedDescription)
                    }
        }
        
    }
    
    
}
