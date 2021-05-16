//
//  Setup.swift
//  CollectionView
//
//  Created by Арген on 16.05.2021.
//

import Foundation
import UIKit

struct Photo {
    var img: UIImage
  
    }

class Img {
    var imageArray = [Photo]()
    
    init() {
        setup()
    }
    
    func setup() {
        let image1 = Photo(img: UIImage(named: "img0")!)
        let image2 = Photo(img: UIImage(named: "picture2")!)
        let image3 = Photo(img: UIImage(named: "img2")!)
        let image4 = Photo(img: UIImage(named: "picture1")!)
        let image5 = Photo(img: UIImage(named: "img4")!)
        
        self.imageArray = [image1, image2, image3, image4, image5]
    }
}
