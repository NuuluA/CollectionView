//
//  SecondViewController.swift
//  CollectionView
//
//  Created by Арген on 16.05.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var images = [UIImage]()
    var image:Img = Img()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
//        for i in 0...5 {
//            guard let img = UIImage(named: "img\(i)") else { return}
//            images.append(img)
//        }
    }
 
}

extension SecondViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        image.imageArray.count
        return image.imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imgCell", for: indexPath) as! SecondCollectionViewCell
//        let image = image.imageArray[indexPath.item]
//        cell.imgView.image = image
        let images = image.imageArray[indexPath.item]
        cell.setupCell(img: images)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.height)
    }
    
    //Otstupy s boku
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    //Otstupy s boku
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
}
