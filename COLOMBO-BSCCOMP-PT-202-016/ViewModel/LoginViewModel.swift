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
     
    let auth = Auth.auth()
   
    var isSignedIn: Bool
    {
    
        return auth.currentUser != nil
    }
    
    func login(email:String,password:String)
    {
        
        auth.signIn(withEmail: email, password: password)
        {
            result , error in
            
            guard result != nil,error==nil else
            {
                return
            }
            
            //Success Full message
            
            
            
        }
        
    }
    
    
}
