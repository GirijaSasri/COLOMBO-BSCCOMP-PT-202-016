////
////  SellerAdvertisementViewModel.swift
////  COLOMBO-BSCCOMP-PT-202-016
////
////  Created by Sasri on 2022-04-10.
////
//
//import Foundation
//import Firebase
//
//class SellerAdvertisementViewModel: ObservableObject
//{
//
//    let auth = Auth.auth()
//    private var SellerService:RegisterServiceProtocol
//
//    init(sellerService: SellerAdvertisementProtocol = SellerService()) {
//        self.sellerService = sellerService
//    }
//
////    var isSignedIn: Bool
////    {
////
////        return auth.currentUser != nil
////    }
//
//    func register(email:String,password:String,name:String,nic_number:String,mobile:String,dob:Date,selectedGender:Int)
//    {
//        sellerService.sellerscreate(title: title) { result in
//                    switch result {
//                    case .success:
//                        print(result)
//                        print("success")
//                    case let .failure(error) :
//                        print(error.localizedDescription)
//                    }
//        }
//
//    }
//
//
//}
