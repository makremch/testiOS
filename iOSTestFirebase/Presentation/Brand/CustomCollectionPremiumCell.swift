//
//  CustomCollectionPremiumCell.swift
//  iOSTestFirebase
//
//  Created by Makrem chambah on 11/12/2020.
//

import Foundation
import UIKit

class CustomCollectionPremiumCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var PremiumBrandImage: UIImageView!
    
    
    func designForView(){
        PremiumBrandImage.layer.cornerRadius        = 10
        PremiumBrandImage.layer.shadowColor         = UIColor.systemGray5.cgColor
        PremiumBrandImage.layer.shadowOffset        = .zero
        PremiumBrandImage.layer.shadowRadius        = 10
        PremiumBrandImage.layer.shadowPath          = UIBezierPath(rect: PremiumBrandImage.bounds).cgPath
        PremiumBrandImage.backgroundColor           = UIColor.white
        PremiumBrandImage.layer.shadowOpacity       = 1
        PremiumBrandImage.layer.shouldRasterize     = true
        PremiumBrandImage.layer.rasterizationScale  = UIScreen.main.scale
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        designForView()
    }
    
}
