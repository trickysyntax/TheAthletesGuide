//
//  FirstViewController.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/16/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, HomeModelProtocol {
    
    //Properties
    
    var feedItems: NSArray = NSArray()
    var selectedLocation : LocationModel = LocationModel()
//    var filteredTableData = [String]()
//    var resultSearchController = UISearchController()
    @IBOutlet weak var listTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.listTableView.delegate = self
        self.listTableView.dataSource = self
        let homeModel = HomeModel()
        homeModel.delegate = self
        homeModel.downloadItems()
//        resultSearchController = ({
//            let controller = UISearchController(searchResultsController: nil)
//            controller.searchResultsUpdater = self
//            controller.dimsBackgroundDuringPresentation = false
//            controller.searchBar.sizeToFit()
//            
//            tableView.tableHeaderView = controller.searchBar
//            
//            return controller
//        })()
//        
//        tableView.reloadData()
        
    }
    
//    override func numberOfSections(in listTableView: UITableView) -> Int {
//        return 1
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
//        if (resultSearchController.isActive) {
//            return filteredTableData.count
//        } else {
//            return tableData.count
//        }
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "BasicCell", for: indexPath)
//
//        if (resultSearchController.isActive) {
//            cell.textLabel?.text = filteredTableData[indexPath.row]
//
//            return UITableViewCell
//        } else {
//            cell.textLabel?.text = tableData[indexPath.row]
//            print(tableData[indexPath.row])
//            return cell
//        }
//    }
    
//    func updateSearchResults(for searchController: UISearchController) {
//        filteredTableData.removeAll(keepingCapacity: false)
//
//        let searchPredicate = NSPredicate(format: "SELF CONTAINS[c] %@", searchController.searchBar.text!)
//        let array = (tableData as NSArray).filtered(using: searchPredicate)
//        filteredTableData = array as! [String]
//        self.tableView.reloadData()
//    }
    
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
        let cellIdentifier: String = "BasicCell"
        let myCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
        let item: LocationModel = feedItems[indexPath.row] as! LocationModel
        myCell.textLabel!.text = item.name
//        if (item.sub_category!).isEmpty {
//
//            myCell.detailTextLabel!.text = locationCategories["\(item.category ?? "0")"]
//            return myCell
//
//        } else {
//
        myCell.detailTextLabel!.text = locationCategories["\(item.category ?? "")"]
       
            return myCell
//        }
        
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Set selected location to var
        selectedLocation = feedItems[indexPath.row] as! LocationModel
        // Manually call segue to detail view controller
        self.performSegue(withIdentifier: "detailSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get reference to the destination view controller
        let detailVC  = segue.destination as! DetailViewController
        // Set the property to the selected location so when the view for
        // detail view controller loads, it can access that property to get the feeditem obj
        detailVC.selectedLocation = selectedLocation
    }

}

