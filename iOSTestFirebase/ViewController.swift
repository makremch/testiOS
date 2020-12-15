//
//  ViewController.swift
//  iOSTestFirebase
//
//  Created by Makrem chambah on 10/12/2020.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase

class ViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
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
        let email = emailField.text!
        let password = passwordField.text!
        Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if let error = error as NSError? {
                switch AuthErrorCode(rawValue: error.code) {
                case .operationNotAllowed: print(error)
                // Error: Indicates that email and password accounts are not enabled. Enable them in the Auth section of the Firebase console.
                case .userDisabled:
                    print(error)
                // Error: The user account has been disabled by an administrator.
                case .wrongPassword:
                    print(error)
                // Error: The password is invalid or the user does not have a password.
                case .invalidEmail:
                    print(error)
                // Error: Indicates the email address is malformed.
                default:
                    print("There is no user record corresponding to this identifier: \(error.localizedDescription)")
                }
            } else {
                print("3asssba khedmet !")
                let userInfo = Auth.auth().currentUser
                let email = userInfo?.email
                print(email)
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let ac = storyBoard.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
                self.navigationController?.pushViewController(ac, animated: true)
            }
        }
        
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
    
    
    
    @IBAction func inscriptionBtn(_ sender: Any) {
        let userInfo = Auth.auth().currentUser
        let email = userInfo?.email
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let ac = storyBoard.instantiateViewController(withIdentifier: "Register") as! RegisterViewController
        self.navigationController?.pushViewController(ac, animated: true)
        
    }
    
}

