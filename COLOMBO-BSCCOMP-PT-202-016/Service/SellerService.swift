//
//  SellerService.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-11.
//

import Foundation
import Firebase


protocol SellerServiceProtocol {
    
    func userSeller(
        email: String, password: String,name:String,nic_number:String,mobile:String,dob:Date,selectedGender:Int,completion: @escaping (Result<Void, Error>) -> Void)
    
}


class SellerService: SellerServiceProtocol {
    let auth = Auth.auth()
    
    func userSeller( email: String, password: String,name: String,nic_number: String,mobile: String ,dob: Date,selectedGender:Int,completion: @escaping (Result<Void, Error>) -> Void) {
        auth.createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                completion(.failure(error!))
            } else {
//                completion(.success(()))
                guard let userID = Auth.auth().currentUser?.uid else { return }
                Firestore.firestore().collection("seller").document(userID).setData([
                    "name": name,
                    "email": email,
                    "nic_number": nic_number,
                    "mobile": mobile,
                    "dob":dob,
                    "selectedGender":selectedGender
//                    "status": "active",
//                    "statusTime": Timestamp(date: Date())
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
