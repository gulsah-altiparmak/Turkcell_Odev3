//
//  ArtDetail.swift
//  Turkcell_Odev3
//
//  Created by Gulsah Altiparmak on 17.01.2021.
//

import UIKit

class ArtDetail: UIViewController {
    var art:Art = Art()
    
    @IBOutlet weak var artImage: UIImageView!
    @IBOutlet weak var artTitle: UILabel!
    @IBOutlet weak var artPrice: UILabel!
    @IBOutlet weak var artDetail: UITextView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        artDetail.layer.borderWidth = 0.3
        artDetail.layer.borderColor = UIColor.systemGray.cgColor
        artDetail.layer.cornerRadius=5.5
        artDetail.layer.masksToBounds=true
        
        artImage.layer.cornerRadius = 20.0
        artImage.layer.masksToBounds = true
        
        artImage.image = art.image
        artTitle.text = art.title
        artDetail.text = art.detail
        artPrice.text = "\(art.price) ₺"
    }
    

 

}
