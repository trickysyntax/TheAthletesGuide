//
//  ThirdViewController.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/30/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import UIKit
import MapKit

class ThirdViewController: UIViewController {
    
    //Properties
    
   
    @IBOutlet weak var mapView: UIView!
    @IBOutlet weak var listView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
    }
    
    @IBAction func switchViews(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            listView.alpha = 0
            mapView.alpha = 1
        } else {
            listView.alpha = 1
            mapView.alpha = 0
        }
    }
}

