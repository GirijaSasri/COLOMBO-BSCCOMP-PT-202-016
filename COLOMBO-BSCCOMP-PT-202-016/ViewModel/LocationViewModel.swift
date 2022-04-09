////
////  LocationViewModel.swift
////  COLOMBO-BSCCOMP-PT-202-016
////
////  Created by Sasri on 2022-04-09.
////
//
//import Foundation
//import CoreLocation
//
//var locationManger:CLLocationManager?
//
//func checkLocationServiceEnabledInDevice()
//
//if CLLocationManager.locationServicesEnabled(){
//    
//    print("# Location service is already enabled")
//    
//    locationManger = CLLocationManager()
//    locationManger?.delegate = self
//}
//
//else{
//    print("# Enable is by going to Settings ->Privacy ->location Service")
//}
//}
//
//func locationManagerDidChangeAuthorization(){
//    
//    guard let locationManger = locationManger else {
//        return
//    }
//    switch locationManger.authorizationStatus{
//    case .notDetermined
//    }
//    
//    
//}
