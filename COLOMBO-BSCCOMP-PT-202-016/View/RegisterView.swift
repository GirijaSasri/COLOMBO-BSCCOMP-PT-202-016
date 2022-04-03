//
//  RegisterView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-03.
//

import SwiftUI

struct RegisterView: View {
    @State var nic=""
    @State var dob=""
    @State var gender=""
    @State var name=""
    @State var mobile=""
    @State var email=""
    @State var password=""
    @State var retype_password=""
    @State var current_location=""
    var body: some View {
        
        VStack {
                Text("Register")
                .font(.system( size: 32, weight: .bold))
                .padding(.bottom)
                Text("Register with the system")
            
                TextField("NIC Number", text: $nic)
                .padding(.all)
                TextField("Date Of Birth", text: $dob)
                .padding(.all)
                TextField("Gender", text: $gender)
                .padding(.all)
                TextField("Name", text: $name)
                .padding(.all)
                
        Group{
               TextField("Mobile Number", text: $mobile)
                .padding(.all)
                TextField("Email", text: $email)
                .padding(.all)
                TextField("Password", text: $password)
                .padding(.all)
                TextField("Retype Password", text: $retype_password)
                .padding(.all)
                TextField("Current Location", text: $current_location)
                .padding(.all)
            }
                
            Button(action:{
                
            }) {
                Text("Sign Up")
            }
            
             
                 
                }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
