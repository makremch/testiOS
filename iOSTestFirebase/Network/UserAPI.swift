//
//  UserAPI.swift
//  testiOSFireBase
//
//  Created by Makrem chambah on 3/12/2020.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseDatabase
import Promise


class UserAPI{
    
    
    static func createUser(email: String, password: String, _ callback: ((Error?) -> ())? = nil){
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if let e = error{
                callback?(e)
                print("Error : -------- ", e)
                return
            }
            print("Done !")
            callback?(nil)
        }
    }
    
    
    
    
    
    
    
}
