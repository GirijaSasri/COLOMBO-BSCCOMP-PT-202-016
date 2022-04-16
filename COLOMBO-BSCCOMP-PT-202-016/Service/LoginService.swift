//
//  LoginService.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-08.
//

import Foundation
import Firebase

protocol LoginServiceProtocol {
    
    func userLogin(email: String, password: String, completion: @escaping (Result<Void, Error>) -> Void)
    
}

class LoginService: LoginServiceProtocol {
    let auth = Auth.auth()
    
    func userLogin(email: String, password: String, completion: @escaping (Result<Void, Error>) -> Void) {
        auth.signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print("error")
                completion(.failure(error!))
            } else {
                print("success")
                completion(.success(()))
            }
        }
    }
    
}
