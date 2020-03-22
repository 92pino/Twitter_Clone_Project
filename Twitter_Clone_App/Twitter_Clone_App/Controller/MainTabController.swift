//
//  MainTabController.swift
//  Twitter_Clone_App
//
//  Created by JinBae Jeong on 2020/03/22.
//  Copyright © 2020 pino. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    // MARK: - Properties
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewControllers()
    }

    // MARK: - Helpers
    func configureViewControllers() {
        
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        let explore = ExploreController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
        let notifications = NotificationsController()
        notifications.tabBarItem.image = UIImage(named: "like_unselected")
        let conversations = ConversationsController()
        conversations.tabBarItem.image = UIImage(named: "ic_mail_outline_white_2x")
        
        viewControllers = [feed, explore, notifications, conversations]
    }
}
