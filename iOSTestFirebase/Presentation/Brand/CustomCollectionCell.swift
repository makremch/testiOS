//
//  CustomCollectionCell.swift
//  iOSTestFirebase
//
//  Created by Makrem chambah on 11/12/2020.
//

import Foundation
import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageViewBrand: UIImageView!
    func designForView(){
        imageViewBrand.layer.cornerRadius        = 10
        imageViewBrand.layer.shadowColor         = UIColor.systemGray5.cgColor
        imageViewBrand.layer.shadowOffset        = .zero
        imageViewBrand.layer.shadowRadius        = 10
        imageViewBrand.layer.shadowPath          = UIBezierPath(rect: imageViewBrand.bounds).cgPath
        imageViewBrand.backgroundColor           = UIColor.white
        imageViewBrand.layer.shadowOpacity       = 1
        imageViewBrand.layer.shouldRasterize     = true
        imageViewBrand.layer.rasterizationScale  = UIScreen.main.scale
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        designForView()
    }
    
}

