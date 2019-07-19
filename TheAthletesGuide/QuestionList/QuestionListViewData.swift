//
//  QuestionListViewData.swift
//  TheAthletesGuide
//
//  Created by Developer on 7/18/19.
//  Copyright © 2019 Ciderhouse. All rights reserved.
//

import Foundation

protocol DocumentSerializable {
    init?(dictionary: [String: Any])
}

struct Question {
    var title: String
    var details: String
    var category: String
    var submitted: String
    var submitter: String
    var score: String
    var city: String
    
    var dictionary: [String: Any] {
        return [
            "title": title,
            "details": details,
            "category": category,
            "submitted": submitted,
            "submitter": submitter,
            "score": score,
            "city": city
        ]
    }
}

extension Question: DocumentSerializable {
    
    init?(dictionary: [String : Any]) {
        guard let title = dictionary["title"] as? String,
            let details = dictionary["details"] as? String,
            let category = dictionary["category"] as? String,
            let submitted = dictionary["submitted"] as? String,
            let submitter = dictionary["submitter"] as? String,
            let score = dictionary["score"] as? String,
            let city = dictionary["city"] as? String
            else { return nil }
        
        self.init(title: title, details: details, category: category, submitted: submitted, submitter: submitter, score: score, city: city)
    }
}


struct QuestionListViewData {
    var questions: [Question]
}
