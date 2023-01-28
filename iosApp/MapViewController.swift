//
//  MapViewController.swift
//  iosApp
//
//  Created by new on 29/1/23.
//

import UIKit
import MapKit


class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkLocationEnabled() 
    }
    
    func checkLocationEnabled() {
        if CLLocationManager.locationServicesEnabled(){
            setupManager()
        }else{
            let alert = UIAlertController(title: "Geolocation is off", message: "Do you wanna turn on", preferredStyle: .alert)
            let settingsAction = UIAlertAction(title: "Settings", style: .default) { (alert) in
                if let url = URL(string: "App-Prefs:root=LOCATION_SERVICES"){
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            
            alert.addAction(settingsAction)
            alert.addAction(cancelAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    func setupManager(){
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    

}


extension MapViewController: CLLocationManagerDelegate{
     
}
