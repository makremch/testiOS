//
//  ViewController.swift
//  iOSTestFirebase
//
//  Created by Makrem chambah on 10/12/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginOnClick(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let ac = storyBoard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
                self.navigationController?.pushViewController(ac, animated: true)
    }
    

}

