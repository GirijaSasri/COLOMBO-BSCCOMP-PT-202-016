//
//  RegisterViewModel.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-03.
//

import Foundation
import Firebase

class RegisterViewModel: ObservableObject
{
     
    let auth = Auth.auth()
    private var registerService:RegisterServiceProtocol
    
    init(registerService: RegisterServiceProtocol = RegisterService()) {
        self.registerService = registerService
    }
   
//    var isSignedIn: Bool
//    {
//    
//        return auth.currentUser != nil
//    }
    
    func login(email:String,password:String)
    {
        registerService.userRegistration(email: email, password: password) { result in
                    switch result {
                    case .success:
                        print(result)
                        print("success")
                    case let .failure(error) :
                        print(error.localizedDescription)
                    }
        }
        
    }
    
    
}
