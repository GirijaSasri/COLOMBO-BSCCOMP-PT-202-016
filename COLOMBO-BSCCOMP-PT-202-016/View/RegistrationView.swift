//
//  RegistrationView.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-08.
//

import SwiftUI
import Firebase

struct RegistrationView: View {
    @State private var nic_number = ""
    @State private var dob = Date()
    
    @State private var selectedGender = 0
    let genders = ["Male", "Female"]
    
    @State private var name = ""
    @State private var mobile = ""
    
    @State private var email = ""
    @State private var password = ""
    @State private var retype_password = ""
    @State private var geolocation = ""
    
    @StateObject var rgViewModule = RegisterViewModel()
    
    @State private var showAlert = false
    @State private var error = ""
   
    
    @StateObject var  locationViewModule = LocationViewModule()
  
  

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
                        .keyboardType(.alphabet)
                        .autocapitalization(.none)
                    
                    TextField("Mobile",text: $mobile)
                        .keyboardType(.numberPad)
                     
                
                }
               
                
            Section(header:Text("Account Infomation")){
                
                TextField("Email",text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                
                
                SecureField("Password", text: $password)
                
                
                SecureField("Retype Password", text: $retype_password)
                // showed be removed from the location
              
                
//                TextField("Geo Location",text: $geolocation)
                Button(locationViewModule.location == nil ? "Geo Location" : "Update Location", action: {
                    locationViewModule.checkLocationServiceEnabledInDevice()
                })
                
                
                   
            }
            
            Button(action:{
                if password != retype_password {
                    showAlert = true
                    error = "Password & Retype Should Be Equal"
                }
                else if nic_number.isEmpty {
                    showAlert = true
                    error = "Nic Number Empty"
                }
                
                else if self.nic_number.count < 12 {
                    showAlert = true
                    error = "NIC Number Should Have 12 Digits"
                }
                else if name.isEmpty {
                    showAlert = true
                    error = "Name Feild Required"
                }
                
                else if mobile.isEmpty {
                    showAlert = true
                    error = "Mobile Number  Required"
                }
                else if self.mobile.count < 10 {
                    showAlert = true
                    error = "Mobile Number Should Consists With 10 Numbers"
                }
                else if email.isEmpty {
                    showAlert = true
                    error = "Email Feild Required"
                }
                
                else if !self.isValidEmail(email) {
                    showAlert = true
                    error = "Email is invalid"
                    
                     }
                
                else if password.isEmpty {
                    showAlert = true
                    error = "pasword empty"
                }
                
                else if self.password.count < 8 {
                    showAlert = true
                    error = "Password should be 8 character long"
                }
                
                else if retype_password.isEmpty {
                    showAlert = true
                    error = "pasword empty"
                }
                
                
                else {
                    let cLocation: GeoPoint = GeoPoint(latitude: locationViewModule.location?.coordinate.latitude, longitude: locationViewModule.location?.coordinate.longitude)
                    rgViewModule.register(email: email, password: password,name: name,nic_number:nic_number,mobile:mobile,dob:dob, selectedGender: selectedGender )
                }
                
                
                
            },label:{
               
               
         
                    Text("Create")
                         .fontWeight(.heavy)
                         .foregroundColor(.black)
                         .frame(width:UIScreen.main.bounds.width-70)
                         .padding(.vertical)
                         .background(Color("button"))
                         .clipShape(Capsule())
                    
               
                
                
            })
          
                
            
            }
            
            .accentColor(.blue)

            .navigationTitle("Sign Up")
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button("Login", action: existaccount)
                       
                    Button("Home", action: re_home)
                        .foregroundColor(Color.red)
                   
                }
                
            }
            
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Registration Error"),
                    message: Text(error)
                )
            }
            
          }
       
//        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
       
        }
       
    func existaccount(){
        print("existaccount")
    }
    func re_home(){
        print("home")
    }
    private func isValidEmail(_ email: String) -> Bool {
          let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
          let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
          return emailPred.evaluate(with: email)
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
