//
//  SettingPageView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-09.
//

import SwiftUI

struct SettingPageView: View {
    @State private var nic_number = ""
    @State private var dob = Date()
    
    @State var selectedGender = 0
    let genders = ["Male", "Female"]
    
    @State private var name = ""
    @State private var mobile = ""
    
    @State private var email = ""
    @State private var changepassword = ""
    @State private var changegeolocation = ""
    
    
    @State private var showAlert = false
    @State private var error = ""
    
    var body: some View {
   NavigationView{
       
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
                       .keyboardType(.alphabet)
                       .autocapitalization(.none)
                   
                   TextField("Email",text: $email)
                       .keyboardType(.emailAddress)
                       .autocapitalization(.none)
                   
               
                    
               
               }
           Section(header:Text("Editable Fields ")){
               
               TextField("Mobile",text: $mobile)
                   .keyboardType(.numberPad)
              
               SecureField("Change Password", text: $changepassword)
               
             
               // showed be removed from the location
               TextField("Change Geo Location",text: $changegeolocation)
               
               
               
               
           }
           Button(action:{
               if mobile.isEmpty {
                   showAlert = true
                   error = "Mobile Number  Required"
               }
               else if self.mobile.count < 10 {
                   showAlert = true
                   error = "Mobile Number Should Consists With 10 Numbers"
               }
               
               if changepassword.isEmpty {
                   showAlert = true
                   error = "Password Number  Required"
               }
               else if self.changepassword.count < 8 {
                   showAlert = true
                   error = "Password should be 8 character long"
               }
               
               
           },label:{
              
              
        
                   Text("Save")
                   .fontWeight(.heavy)
                   .foregroundColor(.black)
                   .frame(width:UIScreen.main.bounds.width-70)
                   .padding(.vertical)
                   .background(Color("button"))
                   .clipShape(Capsule())
                   
              
               
               
           })
         
           
           
           }
           .accentColor(.blue)
           .navigationTitle("Settings page")
           .toolbar{
               Button("Home",action: home)
               .foregroundColor(Color.red)
              
           }
           .alert(isPresented: $showAlert) {
               Alert(
                   title: Text("Setting Page Error"),
                   message: Text(error)
               )
           }
             
 
           
         }
    }
}
func home()
{
    print("Back")
}

struct SettingPageView_Previews: PreviewProvider {
    static var previews: some View {
        SettingPageView()
    }
}
