//
//  AppTextFieldView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-08.
//

import SwiftUI

struct AppTextFieldView: View {
    var name:String
    @Binding var value:String
    var keyboard = UIKeyboardType.default
        
    var body: some View {
        HStack{
           TextField(name, text: $value)
               .font(.title2)
               .foregroundColor(.white)
               .autocapitalization(.none)
               .disableAutocorrection(true)
               .keyboardType(keyboard)
        }
               .padding()
               .background(Color.white.opacity(0.12))
               .cornerRadius(15)
               .padding(.horizontal)
    }
}

struct AppTextFieldView_Previews: PreviewProvider {
    @State static var value = ""
    static var previews: some View {
        AppTextFieldView(
            name: "Text FIeld", value: $value
        )
    }
}
