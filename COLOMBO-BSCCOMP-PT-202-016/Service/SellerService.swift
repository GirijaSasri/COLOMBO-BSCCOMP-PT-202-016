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
        title: String,price: String,landhouse: Int,size:String,district:String,townvillage:Int,completion: @escaping (Result<Void, Error>) -> Void)
    
}


class SellerService: SellerServiceProtocol {
    let auth = Auth.auth()
    
    func userSeller(title: String,price: String,landhouse: Int,size:String,district:String,townvillage:Int,completion: @escaping (Result<Void, Error>) -> Void) {
      print("per auth")
        guard let userID = Auth.auth().currentUser?.uid else { return }
        print("post auth")
        Firestore.firestore().collection("advertisement").document().setData([
            "userID": userID,
            "title": title,
            "price": price,
            "landhouse": landhouse,
            "size": size,
            "district":district,
            "townvillage":townvillage
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
