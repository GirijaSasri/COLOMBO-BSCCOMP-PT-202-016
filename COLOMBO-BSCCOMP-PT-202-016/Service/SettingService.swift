////
////  SettingService.swift
////  COLOMBO-BSCCOMP-PT-202-016
////
////  Created by Sasri on 2022-04-11.
////
//
//
import Foundation
import Firebase


protocol SettingServiceProtocol {
    
    func userSettings(
        email: String, password: String,name:String,nic_number:String,mobile:String,dob:Date,selectedGender:Int,completion: @escaping (Result<Void, Error>) -> Void)
    
}

class SettingService: SettingServiceProtocol {
    let auth = Auth.auth()
    
    func userSettings( email: String, password: String,name: String,nic_number: String,mobile: String ,dob: Date,selectedGender:Int,completion: @escaping (Result<Void, Error>) -> Void) {
        auth.createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                completion(.failure(error!))
            } else {
//                completion(.success(()))
                guard let userID = Auth.auth().currentUser?.uid else { return }
                Firestore.firestore().collection("users").document(userID).setData([
                    "name": name,
                    "email": email,
                    "nic_number": nic_number,
                    "mobile": mobile,
                    "dob":dob,
                    "selectedGender":selectedGender
                ]) { err in
                    if let err = err {
                        print("Error writing document: \(err)")
                    } else {
                        
                    }
                }
            }
        }
    }
}
