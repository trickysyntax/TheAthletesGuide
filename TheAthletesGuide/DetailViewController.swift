//
//  DetailViewContoller.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/22/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DetailViewController : UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var selectedLocation : LocationModel?
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    @IBOutlet weak var websiteLabel: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var catLabel: UILabel!
    
    @IBOutlet weak var subcatLabel: UILabel!
    
    @IBOutlet weak var dotLabel: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.title = selectedLocation!.name
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.prefersLargeTitles = false
        nameLabel.text = selectedLocation!.name
        addressLabel.text = selectedLocation!.address
        phoneLabel.text = selectedLocation!.phone
        websiteLabel.text = selectedLocation!.website
        emailLabel.text = selectedLocation!.email
        catLabel.text = locationCategories["\(selectedLocation!.category ?? "00")"]
        subcatLabel.text = locationCategories["\(selectedLocation!.sub_category ?? "01")"]
        if subcatLabel.text?.isEmpty ?? true {
            dotLabel.text = ""
        } else {
            dotLabel.text = "·"
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
            let nav = self.navigationController?.navigationBar
            nav?.barStyle = UIBarStyle.black
            nav?.tintColor = UIColor.white
        // Create coordinates from location lat/long
        let addressString = selectedLocation!.address ?? "none"
        CLGeocoder().geocodeAddressString(addressString,
                completionHandler: {(placemarks, error) in
                    if error != nil {} else
                        if let marks = placemarks, marks.count > 0 {
                            let placemark = marks[0]
                            if let location = placemark.location {
                                let coords = location.coordinate
                                var poiCoodinates: CLLocationCoordinate2D = CLLocationCoordinate2D()
                                poiCoodinates.latitude = CDouble(coords.latitude)
                                poiCoodinates.longitude = CDouble(coords.longitude)
                                let viewRegion: MKCoordinateRegion = MKCoordinateRegion(center: poiCoodinates, latitudinalMeters: 750, longitudinalMeters: 750)
                                self.mapView.setRegion(viewRegion, animated: true)
                                // Plot pin
                                let pin: MKPointAnnotation = MKPointAnnotation()
                                pin.coordinate = poiCoodinates
                                self.mapView.addAnnotation(pin)
                                
                                //add title to the pin
                                pin.title = self.selectedLocation!.name
                            }
                    }
        })
    }
}
