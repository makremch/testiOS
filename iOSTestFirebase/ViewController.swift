//
//  ViewController.swift
//  iOSTestFirebase
//
//  Created by Makrem chambah on 10/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inscriptionBtn: UIButton!
    @IBOutlet weak var seConnecterBtn: UIButton!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var fieldView: UIView!
    @IBOutlet weak var logoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        designUI()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginOnClick(_ sender: Any) {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let ac = storyBoard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
        self.navigationController?.pushViewController(ac, animated: true)
    }
    
    
    
    func designUI(){
        self.seConnecterBtn.layer.cornerRadius        = 5
//        self.seConnecterBtn.layer.shadowColor         = UIColor.systemGray5.cgColor
        self.seConnecterBtn.layer.shadowOffset        = .zero
        self.seConnecterBtn.layer.shadowRadius        = 10
        self.seConnecterBtn.layer.shadowPath          = UIBezierPath(rect: self.seConnecterBtn.bounds).cgPath
//        self.seConnecterBtn.backgroundColor           = UIColor.white
        self.seConnecterBtn.layer.shadowOpacity       = 0.1
        self.seConnecterBtn.layer.shouldRasterize     = true
        self.seConnecterBtn.layer.rasterizationScale  = UIScreen.main.scale
        
        self.loginView.layer.cornerRadius        = 10
//        self.loginView.layer.shadowColor         = UIColor.systemGray5.cgColor
        self.loginView.layer.shadowOffset        = .zero
        self.loginView.layer.shadowRadius        = 10
        self.loginView.layer.shadowPath          = UIBezierPath(rect: self.loginView.bounds).cgPath
//        self.loginView.backgroundColor           = UIColor.white
        self.loginView.layer.shadowOpacity       = 0.1
        self.loginView.layer.shouldRasterize     = true
        self.loginView.layer.rasterizationScale  = UIScreen.main.scale
        
        self.fieldView.layer.cornerRadius        = 5
//        self.loginView.layer.shadowColor         = UIColor.systemGray5.cgColor
        self.fieldView.layer.shadowOffset        = .zero
        self.fieldView.layer.shadowRadius        = 10
        self.fieldView.layer.shadowPath          = UIBezierPath(rect: self.fieldView.bounds).cgPath
//        self.loginView.backgroundColor           = UIColor.white
        self.fieldView.layer.shadowOpacity       = 0.1
        self.fieldView.layer.shouldRasterize     = true
        self.fieldView.layer.rasterizationScale  = UIScreen.main.scale
        
        
        self.logoImageView.layer.cornerRadius        = 20
//        self.loginView.layer.shadowColor         = UIColor.systemGray5.cgColor
        self.logoImageView.layer.shadowOffset        = .zero
        self.logoImageView.layer.shadowRadius        = 10
        self.logoImageView.layer.shadowPath          = UIBezierPath(rect: self.logoImageView.bounds).cgPath
//        self.loginView.backgroundColor           = UIColor.white
        self.logoImageView.layer.shadowOpacity       = 0.1
        self.logoImageView.layer.shouldRasterize     = true
        self.logoImageView.layer.rasterizationScale  = UIScreen.main.scale
        
        self.inscriptionBtn.layer.cornerRadius        = 5
//        self.loginView.layer.shadowColor         = UIColor.systemGray5.cgColor
        self.inscriptionBtn.layer.shadowOffset        = .zero
        self.inscriptionBtn.layer.shadowRadius        = 10
        self.inscriptionBtn.layer.shadowPath          = UIBezierPath(rect: self.inscriptionBtn.bounds).cgPath
//        self.loginView.backgroundColor           = UIColor.white
        self.inscriptionBtn.layer.shadowOpacity       = 0.1
        self.inscriptionBtn.layer.shouldRasterize     = true
        self.inscriptionBtn.layer.rasterizationScale  = UIScreen.main.scale
    }
}

