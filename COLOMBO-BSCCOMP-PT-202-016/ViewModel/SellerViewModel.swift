//
//  SellerViewModel.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-11.
//

import Foundation
import Firebase

class SellerViewModel: ObservableObject
{
     
    let auth = Auth.auth()
    private var sellerService:SellerServiceProtocol
    
    init(sellerService: SellerServiceProtocol = SellerService()) {
        self.sellerService = sellerService
    }
   
    
    func Seller(email:String,password:String,name:String,nic_number:String,mobile:String,dob:Date,selectedGender:Int)
    {
        sellerService.userSeller(email: email, password: password,name: name,nic_number: nic_number,mobile: mobile,dob: dob,selectedGender:selectedGender) { result in
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
