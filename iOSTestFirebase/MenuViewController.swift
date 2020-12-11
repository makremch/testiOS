//
//  MenuViewController.swift
//  iOSTestFirebase
//
//  Created by Makrem chambah on 11/12/2020.
//

import Foundation
import UIKit

class MenuViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func articleOnClick(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let ac = storyBoard.instantiateViewController(withIdentifier: "ArticleVC") as! ArticlesViewController
                self.navigationController?.pushViewController(ac, animated: true)
    }
    
    @IBAction func brandsOnClick(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let ac = storyBoard.instantiateViewController(withIdentifier: "Brand") as! BrandViewController
                self.navigationController?.pushViewController(ac, animated: true)
    }
    
}
