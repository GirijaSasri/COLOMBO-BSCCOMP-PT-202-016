//
//  LocationViewModel.swift
//  COLOMBO-BSCCOMP-PT-202-016
//
//  Created by Sasri on 2022-04-09.
//

import Foundation
import CoreLocation

class LocationViewModule: NSObject,ObservableObject,CLLocationManagerDelegate{

   
    
var locationManger:CLLocationManager?
    @Published var location: CLLocation?

func checkLocationServiceEnabledInDevice(){

if CLLocationManager.locationServicesEnabled(){

    print("# Location service is already enabled")

    locationManger = CLLocationManager()
    locationManger?.delegate = self
    locationManger?.startUpdatingLocation()
}

else{
    print("# Enable is by going to Settings ->Privacy ->location Service")
}
}

    func locationManagerDidChangeAuthorization(_ manager:CLLocationManager){

        checkAppEnabledLocation()

    }

    private func checkAppEnabledLocation(){

        guard let locationManger = locationManger else {return}

    switch locationManger.authorizationStatus{

    case .notDetermined:
        locationManger.requestWhenInUseAuthorization()
    case .restricted:
          print("# restricted")
    case .denied:
         print("# denied")
    case .authorizedAlways, .authorizedWhenInUse:
           break

    @unknown default:
        break

    }

}
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            guard let currentLocation = locations.last else {
                return
            }
            
            DispatchQueue.main.async {
                self.location = currentLocation
            }
        }

}
