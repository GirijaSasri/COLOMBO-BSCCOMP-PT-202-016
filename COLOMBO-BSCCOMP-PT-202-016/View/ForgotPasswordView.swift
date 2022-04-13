//
//  ForgotPasswordView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-12.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
      
        NavigationView{
            
            VStack(spacing:14)
            {
                InputTextFieldView(text: .constant(""),
                    Placeholder:"Email",
                   keyboardType: .emailAddress)
                                   
                                   
                
            }
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
