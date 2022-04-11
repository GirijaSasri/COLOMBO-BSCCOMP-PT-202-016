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
      
        guard let userID = Auth.auth().currentUser?.uid else { return }
        Firestore.firestore().collection("advertisment").document().setData([
            "userID": userID,
            "email": email,
            "nic_number": nic_number,
            "mobile": mobile,
            "dob":dob,
            "selectedGender":selectedGender
//                    "status": "active",
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
