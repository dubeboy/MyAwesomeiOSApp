//
//  PersonTableViewCell.swift
//  MyAwesomeApp
//
//  Created by Divine Dube on 2019/02/08.
//  Copyright © 2019 Divine Dube. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    //MARK: Properties
    
    
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingStackView: RatingControl!
    @IBOutlet weak var userPhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
    
