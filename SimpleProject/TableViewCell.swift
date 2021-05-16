//
//  TableViewCell.swift
//  SimpleProject
//
//  Created by Арген on 16.05.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var shadow: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        design()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func design() {
        avatarImage.layer.cornerRadius = 40
        
        shadow.layer.shadowColor = UIColor.black.cgColor
        shadow.layer.shadowRadius = 7
        shadow.layer.shadowOpacity = 0.8
        shadow.layer.shadowOffset = .zero
        shadow.layer.cornerRadius = shadow.frame.width * 0.5
    }
    
    func setup(user: User) {
        avatarImage.image = user.image
        nameLbl.text = user.name
        descriptionLbl.text = user.description
    }
}
