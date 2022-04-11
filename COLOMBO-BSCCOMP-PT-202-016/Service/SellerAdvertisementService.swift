//
//
//
//
//
//import Foundation
//import Firebase
//
//
//    protocol SellerAdvertisementProtocol {
//        
//        func sellerscreate(email: String,password : String,title:String,completion: @escaping (Result<Void, Error>) -> Void)
//   
//       
//    }
//
//
//class SellerAdvertisementSerive: SellerAdvertisementProtocol {
//    let auth = Auth.auth()
//    
//    func sellerscreate( title: String,completion: @escaping (Result<Void, Error>) -> Void) {
//        auth.createUser(withEmail: email, password: password) { (result, error) in
//            if error != nil {
//                completion(.failure(error!))
//            } else {
////                completion(.success(()))
//                guard let userID = Auth.auth().currentUser?.uid else { return }
//                Firestore.firestore().collection("sellerDetail").document(userID).setData([
//                    "name": name,
//                  "statusTime": Timestamp(date: Date())
//                ]) { err in
//                    if let err = err {
//                        print("Error writing document: \(err)")
//                    } else {
//                        
//                    }
//                }
//            }
//        }
//    }
//    
//}
