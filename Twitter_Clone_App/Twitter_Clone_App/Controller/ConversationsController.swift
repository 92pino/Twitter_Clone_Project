//
//  ConversationsController.swift
//  Twitter_Clone_App
//
//  Created by JinBae Jeong on 2020/03/22.
//  Copyright © 2020 pino. All rights reserved.
//

import UIKit

class ConversationsController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }

    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
}
