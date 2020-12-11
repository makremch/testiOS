//
//  ArticleViewCell.swift
//  testiOSFireBase
//
//  Created by Makrem chambah on 10/12/2020.
//

import UIKit

class CustomCell : UITableViewCell {
    
//    MARK:- Outlets declarations:
    @IBOutlet weak var articleViewCell  : UIView!
    @IBOutlet weak var offerIDLabel     : UILabel!
    @IBOutlet weak var likesNbr         : UILabel!
    @IBOutlet weak var UIDLabel         : UILabel!
    @IBOutlet weak var imageArticle     : UIImageView!
    
    func designForView(){
        articleViewCell.layer.cornerRadius        = 10
        articleViewCell.layer.shadowColor         = UIColor.systemGray5.cgColor
        articleViewCell.layer.shadowOffset        = .zero
        articleViewCell.layer.shadowRadius        = 10
        articleViewCell.layer.shadowPath          = UIBezierPath(rect: articleViewCell.bounds).cgPath
        articleViewCell.backgroundColor           = UIColor.white
        articleViewCell.layer.shadowOpacity       = 1
        articleViewCell.layer.shouldRasterize     = true
        articleViewCell.layer.rasterizationScale  = UIScreen.main.scale
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        designForView()
    }
    
    
}
