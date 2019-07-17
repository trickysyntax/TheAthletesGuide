//
//  CityMapViewController.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/1/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class CityMapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapListView: MKMapView!
//    var feedItems: NSArray = NSArray()
//    var selectedCity : CityModel = CityModel()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        let locations = [
            ["title": "San Francisco",    "latitude": 37.778473, "longitude": -122.389595],
            ["title": "Anaheim",    "latitude": 33.799925, "longitude": -117.883194],
            ["title": "St. Louis",    "latitude": 38.622317, "longitude": -90.193891],
            ["title": "Arizona",    "latitude": 33.445526, "longitude": -112.066721],
            ["title": "New York (NL)",    "latitude": 40.756337, "longitude": -73.846043],
            ["title": "Philadelphia",    "latitude": 39.905547, "longitude": -75.166589],
            ["title": "Detroit",    "latitude": 42.339227, "longitude": -83.049506],
            ["title": "Denver",    "latitude": 39.755891, "longitude": -104.994198],
            ["title": "Los Angeles",    "latitude": 34.072724, "longitude": -118.240646],
            ["title": "Boston",    "latitude": 42.346619, "longitude": -71.096961],
            ["title": "Texas",    "latitude": 32.751147, "longitude": -97.082454],
            ["title": "Cincinnati",    "latitude": 39.097935, "longitude": -84.508158],
            ["title": "Kansas City",    "latitude": 39.051098, "longitude": -94.481115],
            ["title": "Miami",    "latitude": 25.778655, "longitude": -80.220305],
            ["title": "Milwaukee",    "latitude": 43.027982, "longitude": -87.971165],
            ["title": "Houston",    "latitude": 29.756965, "longitude": -95.354824],
            ["title": "Washington, DC",    "latitude": 38.873010, "longitude": -77.007457],
            ["title": "Oakland",    "latitude": 37.751605, "longitude": -122.200523],
            ["title": "Baltimore",    "latitude": 39.283964, "longitude": -76.621618],
            ["title": "Pittsburgh",    "latitude": 40.447307, "longitude": -80.006841],
            ["title": "San Diego",    "latitude": 32.707710, "longitude": -117.157097],
            ["title": "Cleveland",    "latitude": 41.496192, "longitude": -81.685238],
            ["title": "Toronto",    "latitude": 43.641111, "longitude": -79.389675],
            ["title": "Seattle",    "latitude": 47.591358, "longitude": -122.332283],
            ["title": "Minneapolis",    "latitude": 44.981713, "longitude": -93.277347],
            ["title": "Tampa",    "latitude": 27.768160, "longitude": -82.653465],
            ["title": "Atlanta",    "latitude": 33.734805, "longitude": -84.389996],
            ["title": "Chicago (AL)",    "latitude": 41.829908, "longitude": -87.633540],
            ["title": "Chicago (NL)",    "latitude": 41.947856, "longitude": -87.655887],
            ["title": "New York (AL)",    "latitude": 40.829327, "longitude": -73.927735]
            ]
        
        for location in locations {
            let annotation = MKPointAnnotation()
            annotation.title = location["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
            mapListView.addAnnotation(annotation)
        }
    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.mapListView.delegate = self
////        self.mapListView.dataSource = self
//        let leagueModel = LeagueModel()
//        leagueModel.delegate = self
//        leagueModel.downloadItems()
//    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is MKPointAnnotation else { return nil }
        
        let identifier = "Annotation"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
        
        if annotationView == nil {
            annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView!.canShowCallout = true
        } else {
            annotationView!.annotation = annotation
        }
        
        return annotationView
    }
//    func itemsDownloaded(items: NSArray) {
////        feedItems = items
////        self.mapListView.reloadData()
//    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return feedItems.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cellIdentifier: String = "cityCell"
//        let myCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
//        let item: CityModel = feedItems[indexPath.row] as! CityModel
//        myCell.textLabel!.text = item.cityname
//        return myCell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        // Set selected location to var
//        selectedCity = feedItems[indexPath.row] as! CityModel
//        // Manually call segue to detail view controller
//        self.performSegue(withIdentifier: "citySegue", sender: self)
//
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        // Get reference to the destination view controller
//        let detailVC  = segue.destination as! CityViewController
//        // Set the property to the selected location so when the view for
//        // detail view controller loads, it can access that property to get the feeditem obj
//        detailVC.selectedCity = selectedCity
//}
}
