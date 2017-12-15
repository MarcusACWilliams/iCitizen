//
//  RootViewController.swift
//  iCitizen
//
//  Created by Marcus Williams on 12/4/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit
import CoreLocation

class RootViewController: UIViewController, UIPageViewControllerDelegate, CLLocationManagerDelegate {

    
    var pageViewController: UIPageViewController?
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var drive: UIButton!
    @IBOutlet weak var walk: UIButton!
    @IBOutlet weak var house: UIButton!
    @IBOutlet weak var locationLabel: UILabel!
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let location = locations[0]
        
        var locValue:CLLocationCoordinate2D = manager.location!.coordinate
        //locationLabel.text = String(locValue.latitude) + " " + String(locValue.longitude)
        print("locations = \(locValue.latitude) \(locValue.longitude)")
        
        CLGeocoder().reverseGeocodeLocation(location) { (placemark, error) in
        if error != nil
        {
            print("There was an error")
        }else
        {
            if let place = placemark?[0]
            {
                self.locationLabel.text = place.locality
            }
        }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Configure the page view controller and add it as a child view controller.
       drive.clipsToBounds = true
       drive.layer.cornerRadius = 50
       walk.clipsToBounds = true
       walk.layer.cornerRadius = 50
       house.clipsToBounds = true
       house.layer.cornerRadius = 50
        
    
        // Ask for Authorisation from the User.
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            locationManager.startUpdatingLocation()

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


