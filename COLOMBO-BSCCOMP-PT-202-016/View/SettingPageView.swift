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
           Button(action:{},label:{
              
              
        
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
