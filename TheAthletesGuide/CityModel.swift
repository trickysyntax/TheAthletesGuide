//
//  theCityModel.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/30/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation

class CityModel: NSObject {
    
    //properties
    
    var cityname: String?
    var team: String?
    var travel: String?
    var aaa: String?
    var city_code: String?
    var img: String?
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(cityname: String, team: String, travel: String, aaa: String, city_code: String, img: String) {
        self.cityname = cityname
        self.team = team
        self.travel = travel
        self.aaa = aaa
        self.city_code = city_code
        self.img = img
    }
    
    
    //prints object's current state
    
    //    override var description: String {
    //        return "id: \(id), city_id: \(city_id), category: \(category), sub_category: \(sub_category), name: \(name), phone: \(phone), email: \(email), website: \(website), address: \(address), comment: \(comment), recommendedby: \(recommendedby)"
    //
    //    }
    
    
}
