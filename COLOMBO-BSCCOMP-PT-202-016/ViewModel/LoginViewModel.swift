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
    @Published var isuserlogin = false
    let auth = Auth.auth()
    private var loginService:LoginServiceProtocol
    
    init(loginService: LoginServiceProtocol = LoginService()) {
        self.loginService = loginService
        checkIfSignedIn()
    }
   
    var isSignedIn: Bool
    {
        print(auth.currentUser?.uid)
        return auth.currentUser != nil
    }
    
    func logoutUser() {
        // call from any screen
        do { try Auth.auth().signOut() }
        catch { print("already logged out") }
        
    }
    
    private func checkIfSignedIn() {
        Auth.auth().addStateDidChangeListener { (auth, user) in

                    if let user = user {
                        self.isuserlogin = true
                    } else {
                        // No user
                        self.isuserlogin = false
                    }
                }
    }
    func login(email:String,password:String)
    {
        loginService.userLogin(email: email, password: password) { result in
                    switch result {
                    case .success:
                        print(result)
                        self.isuserlogin = true
                        print("success")
                    case let .failure(error) :
                        print(error.localizedDescription)
                    }
        }
        
    }
    
    
}
