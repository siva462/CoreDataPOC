//
//  UsersListIntractor.swift
//  CoredataPOC
//
//  Created by Wipro on 11/12/19.
//  Copyright © 2019 wipro. All rights reserved.
//

import UIKit

protocol UsersListBusinesLogic
{
    func fetchList(request: UsersListModel.FetchUsers.Request)
}

protocol UsersListDataStore
{
    var orders: [Users]? { get }
}

class UsersListIntractor: UsersListBusinesLogic {
   
    
    var presenter: FetchUsersListProtocol?
    var orders: [Users]?
    


    func fetchList(request: UsersListModel.FetchUsers.Request){
        
        CoreDataManager.sharedInstance.fetchList(completionHandler: { (responce) -> Void in
            
            print(responce.user_name as Any)
        })
    }
    
}
