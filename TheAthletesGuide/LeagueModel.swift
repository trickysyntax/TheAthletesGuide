//
//  LeagueModel.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/30/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation

protocol LeagueModelProtocol: class {
    func itemsDownloaded(items: NSArray)
}

class LeagueModel: NSObject, URLSessionDataDelegate {
    //properties
    
    weak var delegate: LeagueModelProtocol!
    
    var data = Data()
    
    let urlPath: String = "http://community.ourbaseballlife.com/cities"
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
        let cities = NSMutableArray()
        
        for i in 0 ..< jsonResult.count
        {
            
            jsonElement = jsonResult[i] as! NSDictionary
            
            let city = CityModel()
            
            if  let cityname = jsonElement["cityname"] as? String,
                let team = jsonElement["team"] as? String,
                let travel = jsonElement["travel"] as? String,
                let aaa = jsonElement["aaa"] as? String,
                let city_code = jsonElement["city_code"] as? String,
                let img = jsonElement["img"] as? String
            {
                city.cityname = cityname
                city.team = team
                city.travel = travel
                city.aaa = aaa
                city.city_code = city_code
                city.img = img
            }
            
            cities.add(city)
            
        }
        
        DispatchQueue.main.async(execute: { () -> Void in
            
            self.delegate.itemsDownloaded(items: cities)
            
        })
    }
}
