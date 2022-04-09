//
//  RegistrationView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-08.
//

import SwiftUI

struct RegistrationView: View {
    @State private var nic_number = ""
    @State private var dob = Date()
    
    @State var selectedGender = 0
    let genders = ["Male", "Female"]
    
    @State private var name = ""
    @State private var mobile = ""
    
    @State private var email = ""
    @State private var password = ""
    @State private var retype_password = ""
    @State private var geolocation = ""
    
    
    
    var body: some View {
        
        NavigationView {
            
        Form{
                
            Section(header:Text("Basic Infomation"))
                {
                    TextField("NIC Number",text: $nic_number)
                    DatePicker("Birthday",selection: $dob,displayedComponents: .date)
                    HStack {
                        Text("Gender")
                        Picker("", selection: $selectedGender) {

                            ForEach(0..<genders.count) { index in
                                Text(self.genders[index]).tag(index).font(.title)
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                        
                    }
                    TextField("Name",text: $name)
                    
                    TextField("Mobile",text: $mobile)
                        .keyboardType(.numberPad)
                     
                
                }
            Section(header:Text("Account Infomation")){
                
                TextField("Email",text: $email)
                    .autocapitalization(.none)
                
                SecureField("Password", text: $password)
                
                SecureField("Retype Password", text: $retype_password)
                // showed be removed from the location
                TextField("Geo Location",text: $geolocation)
                
                
                
                
            }
            
            
            
            
            }
            .accentColor(.blue)
            .navigationTitle("Sign Up")
          }

            
            }
        
        
    }


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
//
//#if canImport(UIKit)
//    extension View{
//    func hideKeyboard(){
//        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),to: nil,from: nil,for: nil)
//    }
//}
//#endif
