////
////  ForgotPasswordService.swift
////  COLOMBO-BSCCOMP-PT-202-016
////
////  Created by Sasri on 2022-04-13.
////
//
//import Combine
//import Foundation
//import Firebase
//
//
//protocol ForgotPasswordService{
//    func sendpasswordRest(to email:String) ->AnyPublisher<Void, Error>
//}
//
//final class ForgotPasswordServiceImpl: ForgotPasswordService{
//    
//    func sendpasswordRest(to email: String) -> AnyPublisher<Void, Error> {
//        
//        Deferred{
//            Future{
//                promise in
//                
//                Auth
//                    .auth()
//                    .sendPasswordReset(withEmail: email) { error in
//                  
//                        if let err = error{
//                            promise(.failure(err))
//                        }
//                        else{
//                            promise(.success(<#T##Void#>))
//                        }
//                }
//            }
//        }
//        .eraseToAnyPublisher()
//    }
//}
