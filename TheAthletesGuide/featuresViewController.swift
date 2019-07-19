//
//  featuresViewController.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/11/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class FeaturesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var features: [Item] = []
    @IBOutlet weak var tableView: UITableView!
}

extension FeaturesViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.delegate = self
//        tableView.dataSource = self
        guard let url = URL(string: "https://ourbaseballlife.com/blog?format=json-pretty") else { return }
        let request = NetworkRequest(url: url)
        request.execute { [weak self] (data) in
            if let data = data {
                self?.decode(data)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow,
            let featureViewController = segue.destination as? FeatureViewController {
            featureViewController.feature = features[indexPath.row]
        }
    }
}
    
extension FeaturesViewController {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return features.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        let item = features[indexPath.row]
        cell.title.text = item.title
        cell.body.text = item.body
        cell.authorDisplayName.text = item.author?.displayName
//        cell.authorPhoto.text = item.author?.avatarURL
//        cell.assetURL.text = item.assetURL
//        cell.featurePhoto.text = item.featurePhoto
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        var item = features[indexPath.row]
        if let _ = item.featurePhoto {
            return
        }
        guard let featurePhotoURL = URL(string: item.featurePhoto!) else { return }
        let request = NetworkRequest(url: featurePhotoURL)
        request.execute { [weak self](data) in
            guard let data = data else {
                return
            }
//            item.featurePhoto = UIImage(data: data)
            item.featurePhoto = String(describing: data)
            self?.features[indexPath.row] = item
            tableView.reloadRows(at: [indexPath], with: .fade)
        }
    }
}

private extension FeaturesViewController {
    func decode(_ data: Data) {
        let decoder = JSONDecoder()
//        decoder.dateDecodingStrategy = .formatted(DateFormatter.fullISO8601)
        do {
            features = try decoder.decode([Item].self, from: data)
            tableView .reloadData()
        } catch {
            let title = "Oops, something went wrong"
            let message = "Please make sure you have the latest version of the app."
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let dismissAction = UIAlertAction(title: title, style: .default, handler: nil)
            alertController.addAction(dismissAction)
            show(alertController, sender: nil)
        }
    }
}

class ItemCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UILabel!
//    @IBOutlet weak var featurePhoto: UIImage!
//    @IBOutlet weak var authorPhoto: String!
    @IBOutlet weak var authorDisplayName: UILabel!
}

    
    
    
    
//
//
//
//
//
//class featureViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, FeatureSetModelProtocol {
//    var feedItems: NSArray = NSArray()
//    var selectedFeature : featureModel = featureModel()
//    @IBOutlet weak var featureTableView: UITableView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.featureTableView.delegate = self
//        self.featureTableView.dataSource = self
//        let featureSetModel = FeatureSetModel()
//        featureSetModel.delegate = self
//        featureSetModel.downloadItems()
//    }
//
//
//    override func viewDidAppear(_ animated: Bool) {
//        let nav = self.navigationController?.navigationBar
//        nav?.barStyle = UIBarStyle.black
//        nav?.tintColor = UIColor.white
//    }
//    func itemsDownloaded(items: NSArray) {
//        feedItems = items
//        self.featureTableView.reloadData()
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return feedItems.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cellIdentifier: String = "featureCell"
//        let myCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
//        let item: featureModel = feedItems[indexPath.row] as! featureModel
//        myCell.textLabel!.text = item.title
//        return myCell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        // Set selected location to var
//        selectedFeature = feedItems[indexPath.row] as! featureModel
//        // Manually call segue to detail view controller
//        self.performSegue(withIdentifier: "featureSegue", sender: self)
//
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        // Get reference to the destination view controller
//        let detailVC  = segue.destination as! featureViewController
//        // Set the property to the selected location so when the view for
//        // detail view controller loads, it can access that property to get the feeditem obj
//        detailVC.selectedFeature = selectedFeature
//    }
//}
