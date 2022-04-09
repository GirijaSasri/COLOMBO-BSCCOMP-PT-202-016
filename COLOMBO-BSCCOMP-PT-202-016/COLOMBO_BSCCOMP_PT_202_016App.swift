//
//  COLOMBO_BSCCOMP_PT_202_016App.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-03.
//

import SwiftUI
import Firebase

@main
struct COLOMBO_BSCCOMP_PT_202_016App: App {
    init()
    {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            RegistrationView()
        }
    }
}
