//
//  BrandAPI.swift
//  iOSTestFirebase
//
//  Created by Makrem chambah on 11/12/2020.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseDatabase
import Promise


class BrandAPI{
    
    
    static func loadBrands() -> Promise<[NSDictionary]>{
        let ref = Database.database().reference().child("brands")
        return  Promise<[NSDictionary]> { fulfill, reject in
        ref.observeSingleEvent(of: .value,  with:{(snapshot : DataSnapshot) in
            
            if let snapshots = snapshot.children.allObjects as? [DataSnapshot] {
                print((snapshots))
                let values = snapshot.value as? NSDictionary
                let items = values?.allValues as! [NSDictionary]
                fulfill(items)
            }else{
                reject("Error !" as! Error)
            }
        })
        }
    }
    static func loadPurchases() -> Promise<[NSDictionary]>{
        let ref = Database.database().reference().child("conversions").child("purchase")
        return  Promise<[NSDictionary]> { fulfill, reject in
        ref.observeSingleEvent(of: .value,  with:{(snapshot : DataSnapshot) in
            
            if let snapshots = snapshot.children.allObjects as? [DataSnapshot] {
                print((snapshots))
                let values = snapshot.value as? NSDictionary
                let items = values?.allValues as! [NSDictionary]
                fulfill(items)
            }else{
                reject("Error !" as! Error)
            }
        })
        }
    }
 
    
    
}
