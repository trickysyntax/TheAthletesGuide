//
//  LaunchViewController.swift
//  Launches
//
//  Created by Matteo Manferdini on 04/03/2019.
//  Copyright © 2019 Matteo Manferdini. All rights reserved.
//

import UIKit

class FeatureViewController: UITableViewController {
    @IBOutlet weak var featureDateLabel: UILabel!
    @IBOutlet weak var featureTitleLabel: UILabel!
    @IBOutlet weak var featureBodyLabel: UILabel!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var authorAvatarLabel: UILabel!
    @IBOutlet weak var featurePhotoLabel: UILabel!
    @IBOutlet weak var featureActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var featureImageView: UIImageView!
    private var isRefreshing = true
    var feature: Item?
}

extension FeatureViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let refreshControl = UIRefreshControl()
        refreshControl.tintColor = .white
        tableView.refreshControl = refreshControl
        tableView.contentOffset = CGPoint(x:0, y:-refreshControl.frame.size.height)
        tableView.refreshControl?.beginRefreshing()
        fetchItem()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isRefreshing ? 0 : super.tableView(tableView, numberOfRowsInSection: 0)
    }
}

private extension FeatureViewController {
    func fetchItem() {
        guard feature != nil else {
            return
        }
        let url = URL(string: "https://ourbaseballlife.com/blog/?format=json-pretty")!
        let request = NetworkRequest(url: url)
        request.execute { [weak self] (data) in
            self?.isRefreshing = false
            self?.tableView.reloadData()
            self?.tableView.refreshControl?.endRefreshing()
            if let data = data {
                self?.decode(data)
            }
        }
    }
    
    func decode(_ data: Data) {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(DateFormatter.fullISO8601)
        if let item = try? decoder.decode(Item.self, from: data) {
            set(item)
        }
    }
    
    func set(_ item: Item) {
        featureDateLabel.text = item.addedOn
        featureTitleLabel.text = item.title
        featureBodyLabel.text = item.body
//        featurePhotoLabel.url = item.assetURL
        
        let author = item.author
        authorNameLabel.text = author?.displayName
        authorAvatarLabel.text = author?.avatarAssetURL
        
        fetchFeature(withURL: (author?.avatarURL)!)
    }
    
    func fetchFeature(withURL url: URL) {
        let request = NetworkRequest(url: url)
        request.execute { [weak self] (data) in
            guard let data = data else {
                return
            }
            self?.featureImageView.image = UIImage(data: data)
            self?.featureActivityIndicator.stopAnimating()
        }
    }
}

extension Date {
    var formatted: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .long
        return formatter.string(from: self)
    }
}

extension DateFormatter {
    static let fullISO8601: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"
        formatter.calendar = Calendar(identifier: .iso8601)
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        return formatter
    }()
}

extension Int {
    var formatted: String {
        let sign = self >= 0 ? "+" : ""
        return "T" + sign + "\(self)"
    }
}

extension Bool {
    var formatted: String {
        return self ? "Succeeded" : "Failed"
    }
}
