////
////  ForgetPasswordView.swift
////  COLOMBO-BSCCOMP-PT-202-016
////
////  Created by Sasri on 2022-04-13.
////
//
//import SwiftUI
//
//struct ForgetPasswordView: View {
//
//    @Environment(\.presentationMode) var presentationMode
//    @StateObject private var vm = ForgetPasswordViewModelImp()
//        service: ForgetPasswordServiceImpl()
//
//    var body: some View {
//
//        NavigationView {
//
//            VStack(spacing:14)
//            {
//            InputTextFieldView(text: $vm.email,
//                placeholder:"Email",
//                keyboardType: .emailAddress)
//
//                ButtonView(title: "Send Password Reset"){
//                    vm.sendPasswordReset()
//                    presentationMode.wrappedValue.dismiss()
//
//                }
//          }
//            .padding(.horizontal,15)
//            .navigationBarTitle("Reset password")
//            .applyClose()
//        }
//    }
//}
//
//struct ForgetPasswordView_Previews: PreviewProvider {
//    static var previews: some View {
//        ForgetPasswordView()
//    }
//}
