//
//  UserService.swift
//  Twitter_Clone_App
//
//  Created by JinBae Jeong on 2020/03/27.
//  Copyright © 2020 pino. All rights reserved.
//

import Foundation
import Firebase

struct UserService {
    static let shared = UserService()
    
    func fetchUser(uid: String, completion: @escaping(User) -> Void) {
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
                        
            let user = User(uid: uid, dictionary: dictionary)
            completion(user)
        }
    }
}
