//
//  ArticleAPI.swift
//  testiOSFireBase
//
//  Created by Makrem chambah on 10/12/2020.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseDatabase
import Promise


class ArticleAPI{
    
    
    static func loadArticles() -> Promise<[NSDictionary]>{
        let ref = Database.database().reference().child("articles")
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
