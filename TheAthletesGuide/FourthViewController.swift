//
//  FourthViewController.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/16/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//
import UIKit
import MapKit

class FourthViewController: UIViewController {
    
    //Properties
    @IBOutlet weak var featuredView: UIView!
    @IBOutlet weak var boardsView: UIView!
    @IBOutlet weak var questionsView: UIView!
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
            boardsView.alpha = 0
            questionsView.alpha = 0
            featuredView.alpha = 1
        } else if sender.selectedSegmentIndex == 1 {
            boardsView.alpha = 1
            questionsView.alpha = 0
            featuredView.alpha = 0
        } else {
            boardsView.alpha = 0
            questionsView.alpha = 1
            featuredView.alpha = 0
        }
    }
}
