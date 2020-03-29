//
//  Tweet.swift
//  Twitter_Clone_App
//
//  Created by JinBae Jeong on 2020/03/29.
//  Copyright © 2020 pino. All rights reserved.
//

import Foundation

struct Tweet {
    let caption: String
    let tweetID: String
    let uid: String
    let likes: Int
    var timestamp: Date!
    let retweetCounts: Int
    
    init(tweetID: String, dictionary: [String: Any]) {
        self.tweetID = tweetID
        
        self.caption = dictionary["caption"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.likes = dictionary["likes"] as? Int ?? 0
        self.retweetCounts = dictionary["retweetCounts"] as? Int ?? 0
        
        if let timestamp = dictionary["timestapm"] as? Double {
            self.timestamp = Date(timeIntervalSince1970: timestamp)
        }
    }
}
