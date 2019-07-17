//
//  CityViewContoller.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/30/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class CityViewController : UIViewController {
    
    @IBOutlet weak var bgImage: UIImageView!
    var selectedCity : CityModel?
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var travelLabel: UILabel!
    @IBOutlet weak var aaaLabel: UILabel!
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = selectedCity!.city_code
        teamLabel.text = selectedCity!.team
        travelLabel.text = selectedCity!.travel
        aaaLabel.text = selectedCity!.aaa
        bgImage.image = UIImage(named: selectedCity!.img ?? "")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
        nav?.prefersLargeTitles = false
        // Create coordinates from location lat/long
    }
}
