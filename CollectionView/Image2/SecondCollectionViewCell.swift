//
//  SecondCollectionViewCell.swift
//  CollectionView
//
//  Created by Арген on 16.05.2021.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imgView: UIImageView!
    
    func setupCell(img: Photo) {
        self.imgView.image = img.img
    }
}
