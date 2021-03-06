//
//  CustomCell.swift
//  Turkcell_Odev3
//
//  Created by Gulsah Altiparmak on 17.01.2021.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var artTitle: UILabel!
    @IBOutlet weak var artPrice: UILabel!
  
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        artImage.layer.cornerRadius = 20.0
        artImage.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
