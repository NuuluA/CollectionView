//
//  ViewController.swift
//  CollectionView
//
//  Created by Арген on 16.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let id = "cell"
    let countCell: CGFloat = 2
    let offset: CGFloat = 2.0
    var images = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        for i in 0...7 {
            guard let image = UIImage(named: "picture\(i)") else {return}
            images.append(image)
        }
     
        collectionView.register(UINib(nibName: "ImageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: id)
    }

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ImageCollectionViewCell else { return UICollectionViewCell() }
        
        let image = images[indexPath.item]
        cell.imageView.image = image
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCV = collectionView.frame
        let width = frameCV.width / countCell
        let height = width

        let spacing = (countCell + 1) * offset / countCell
        return CGSize(width: width - spacing, height: height - (offset*2))
        
    }
}
