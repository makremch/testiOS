//
//  BrandDetailsInteractor.swift
//  iOSTestFirebase
//
//  Created by Makrem chambah on 11/12/2020.
//  Copyright (c) 2020 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol BrandDetailsBusinessLogic
{
    func doSomething(request: BrandDetails.Something.Request)
    func loadPurchases(id : String)
}

protocol BrandDetailsDataStore
{
    //var name: String { get set }
}

class BrandDetailsInteractor: BrandDetailsBusinessLogic, BrandDetailsDataStore
{
    var presenter: BrandDetailsPresentationLogic?
    var worker: BrandDetailsWorker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: BrandDetails.Something.Request)
    {
        worker = BrandDetailsWorker()
        worker?.doSomeWork()
        
        let response = BrandDetails.Something.Response()
        presenter?.presentSomething(response: response)
    }
    
    func loadPurchases(id : String){
        worker = BrandDetailsWorker()
        worker?.loadPurchases().then(){
            response in
            print(response)
            self.presenter!.successGettingPurchases(response:response)
        }.catch{ error in
            print(error)
            //            let error : [NSDictionary] = []
            //            self.presenter!.gettingArticlesFailure(response: error)
        }
    }
}