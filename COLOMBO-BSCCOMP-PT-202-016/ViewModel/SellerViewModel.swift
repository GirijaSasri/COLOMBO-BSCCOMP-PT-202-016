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
   
    
    func Seller(title:String,price:String,landhouse:Int,size:String,district:String,townvillage:Int)
    {
        sellerService.userSeller(title: title, price: price, landhouse: landhouse,size: size,district: district,townvillage:townvillage) { result in
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
