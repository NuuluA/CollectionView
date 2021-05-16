//
//  Setup.swift
//  SimpleProject
//
//  Created by Арген on 13.05.2021.
//

import Foundation
import UIKit

struct User {
    let image: UIImage
    let name: String
    let description: String
    
}

class Setup {
    var user = [User]()
    
    init() {
        setup()
    }

    func setup() {
        let user1 = User(image: UIImage(named: "image1")!, name: "Nature", description: "Nature picture")
        let user2 = User(image: UIImage(named: "image2")!, name: "Argen", description: "Man")
        let user3 = User(image: UIImage(named: "image3")!, name: "Season", description: "Ocean picture")
        let user4 = User(image: UIImage(named: "image4")!, name: "Gena", description: "Human")
        
        self.user = [user1, user2, user3, user4]
    }
    
}

