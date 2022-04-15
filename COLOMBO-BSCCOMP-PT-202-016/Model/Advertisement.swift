//
//  Advertisement.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-15.
//

import Foundation
import FirebaseFirestoreSwift

class Advertisement: Codable, Identifiable {
    @DocumentID var id:   String? = UUID().uuidString
    let price: Double
    let landhouse: Int
    let district: String
    let size: String
    let title: String
}
