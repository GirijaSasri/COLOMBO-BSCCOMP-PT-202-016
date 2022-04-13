////
////  ForgotPasswordViewModel.swift
////  COLOMBO-BSCCOMP-PT-202-016
////
////  Created by Sasri on 2022-04-13.
////
//
//import Foundation
//import Combine
//
//protocol ForgotPasswordViewModel{
//    
//    func sendPasswordReset()
//    var service: ForgotPasswordService{ get }
//    var email: String { get }
//    init(service: ForgotPasswordService )
//}
//
//
//final class ForgotPassWordViewModelImp: ObservableObject, ForgotPasswordViewModel{
//    
//    @Published var email: String = ""
//    
//    let service: ForgotPasswordService
//    
//    private var subscriptions = Set<AnyCancellable>()
//    
//    init(service: ForgotPasswordService)
//    {
//        self.service = service
//    }
//    
//    func sendPasswordReset() {
//        
//        service
//            .sendPasswordReset(to:email)
//            .sink{
//                res in
//                switch res{
//                case .failure(let err):
//                    print("Failed: \(err)")
//                default:break
//                }
//                
//            } receiveValue:{
//                print("Sent Password Rest Request")
//            }
//            .store(in: &subscriptions)
//        
//    }
//    
//}
//
//
