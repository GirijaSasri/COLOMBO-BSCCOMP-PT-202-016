//
//  HomeViewModel.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-03.
//

import Foundation
import Firebase

class HomeViewModel: ObservableObject
{
    var ads:[Advertisement] = []
    var isLoading = false
    
    init(){
        fetchAds()
    }
    
    func fetchAds(){
        Firestore.firestore().collection("advertisement").getDocuments() {
            (querySnapshot, error) in
            if let error = error {
                self.isLoading = false
                print(error.localizedDescription)
            }
            
            guard let documents = querySnapshot?.documents else {
                return
            }
            print(documents)
            
            self.ads = documents.compactMap{
                (doc) -> Advertisement? in
                return try? doc.data(as: Advertisement.self)
            }
            
            print(self.ads.count)
        }
    }
    
}
