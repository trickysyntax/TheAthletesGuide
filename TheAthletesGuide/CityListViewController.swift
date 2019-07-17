//
//  CityListViewController.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/1/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class CityListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, LeagueModelProtocol {
    var feedItems: NSArray = NSArray()
    var selectedCity : CityModel = CityModel()
    @IBOutlet weak var listTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.listTableView.delegate = self
        self.listTableView.dataSource = self
        let leagueModel = LeagueModel()
        leagueModel.delegate = self
        leagueModel.downloadItems()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        let nav = self.navigationController?.navigationBar
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor.white
    }
    func itemsDownloaded(items: NSArray) {
        feedItems = items
        self.listTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feedItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier: String = "cityCell"
        let myCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
        let item: CityModel = feedItems[indexPath.row] as! CityModel
        myCell.textLabel!.text = item.cityname
        return myCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Set selected location to var
        selectedCity = feedItems[indexPath.row] as! CityModel
        // Manually call segue to detail view controller
        self.performSegue(withIdentifier: "citySegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get reference to the destination view controller
        let detailVC  = segue.destination as! CityViewController
        // Set the property to the selected location so when the view for
        // detail view controller loads, it can access that property to get the feeditem obj
        detailVC.selectedCity = selectedCity
    }
}
