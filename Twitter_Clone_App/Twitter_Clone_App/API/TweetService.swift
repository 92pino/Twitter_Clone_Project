//
//  TweetService.swift
//  Twitter_Clone_App
//
//  Created by JinBae Jeong on 2020/03/29.
//  Copyright © 2020 pino. All rights reserved.
//

import Firebase

struct TweetService {
    static let shared = TweetService()
    
    func uploadTweet(caption: String, completion: @escaping(Error?, DatabaseReference) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let value = ["uid": uid,
                     "timestamp": Int(NSDate().timeIntervalSince1970),
                     "likes": 0,
                     "retweets": 0,
                     "caption": caption] as [String : Any]
        
        REF_TWEETS.childByAutoId().updateChildValues(value, withCompletionBlock: completion)
    }
}
