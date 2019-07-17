//
//  HomeModel.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/21/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation

protocol HomeModelProtocol: class {
    func itemsDownloaded(items: NSArray)
}

class HomeModel: NSObject, URLSessionDataDelegate {
    //properties
    
    weak var delegate: HomeModelProtocol!
    
    var data = Data()
    
    let urlPath: String = "http://community.ourbaseballlife.com/tagserver"
    func downloadItems() {
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url) { (data, response, error) in
        
            if error != nil {
                print("Failed to download data")
            } else {
                print("Data downloaded")
                self.parseJSON(data!)
            }
        }
        
        task.resume()
    }
    
    func parseJSON(_ data:Data) {
        
        var jsonResult = NSArray()
        
        do{
            jsonResult = try JSONSerialization.jsonObject(with: data, options:JSONSerialization.ReadingOptions.allowFragments) as! NSArray
            
        } catch let error as NSError {
            print(error)
            
        }
        
        var jsonElement = NSDictionary()
        let locations = NSMutableArray()
        
        for i in 0 ..< jsonResult.count
        {
            
            jsonElement = jsonResult[i] as! NSDictionary
            
            let location = LocationModel()
            
             if let id = jsonElement["id"] as? String,
                let city_id = jsonElement["city_id"] as? String,
                let category = jsonElement["category"] as? String,
                let sub_category = jsonElement["sub_category"] as? String,
                let name = jsonElement["name"] as? String,
                let phone = jsonElement["phone"] as? String,
                let email = jsonElement["email"] as? String,
                let website = jsonElement["website"] as? String,
                let address = jsonElement["address"] as? String,
                let comment = jsonElement["comment"] as? String,
                let recommendedby = jsonElement["recommendedby"] as? String                
            {
                
                location.id = id
                location.city_id = city_id
                location.category = category
                location.sub_category = sub_category
                location.name = name
                location.phone = phone
                location.email = email
                location.website = website
                location.address = address
                location.comment = comment
                location.recommendedby = recommendedby
            }
            
            locations.add(location)
            
        }
        
        DispatchQueue.main.async(execute: { () -> Void in
            
            self.delegate.itemsDownloaded(items: locations)
            
        })
    }
}
