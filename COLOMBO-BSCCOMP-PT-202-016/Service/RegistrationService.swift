//
//  RegistrationService.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-09.
//



import Foundation
import Firebase


protocol RegisterServiceProtocol {
    
    func userRegistration(
        email: String, password: String,name:String,nic_number:String,mobile:String,dob:Date,selectedGender:Int,clLocation:GeoPoint,completion: @escaping (Result<Void, Error>) -> Void)
    
}

class RegisterService: RegisterServiceProtocol {
    let auth = Auth.auth()
    
    func userRegistration( email: String, password: String,name: String,nic_number: String,mobile: String ,dob: Date,selectedGender:Int,clLocation:GeoPoint,completion: @escaping (Result<Void, Error>) -> Void) {
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
                    "selectedGender":selectedGender,
                    "clLocation": clLocation
//                    "statusTime": Timestamp(date: Date())
                ]) { err in
                    if let err = err {
                        print("Error \(err)")
                        completion(.failure(err))
                      
                    } else {
                        print("Success")
                        completion(.success(()))
                    }
                }
            }
        }
    }
}
