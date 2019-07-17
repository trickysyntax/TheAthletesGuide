//
//  LocationModel.swift
//  The Athlete's Guide
//
//  Created by Developer on 5/21/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation

class LocationModel: NSObject {
    
    //properties
    
    var id: String?
    var city_id: String?
    var category: String?
    var sub_category: String?
    var name: String?
    var phone: String?
    var email: String?
    var website: String?
    var address: String?
    var comment: String?
    var recommendedby: String?
    
    //empty constructor
    
    override init()
    {
        
    }
    
    //construct with @name, @address, @latitude, and @longitude parameters
    
    init(id: String, city_id: String, category: String, sub_category: String, name: String, phone: String, email: String, website: String, address: String, comment: String, recommendedby: String) {
        
        self.id = id
        self.city_id = city_id
        self.category = category
        self.sub_category = sub_category
        self.name = name
        self.phone = phone
        self.email = email
        self.website = website
        self.address = address
        self.comment = comment
        self.recommendedby = recommendedby
    }
    
    
    //prints object's current state
    
//    override var description: String {
//        return "id: \(id), city_id: \(city_id), category: \(category), sub_category: \(sub_category), name: \(name), phone: \(phone), email: \(email), website: \(website), address: \(address), comment: \(comment), recommendedby: \(recommendedby)"
//        
//    }
    
    
}
