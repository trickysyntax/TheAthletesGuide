//
//  StartViewController.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/16/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import UIKit
import FirebaseAuth

class StartViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "alreadyLoggedIn", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

