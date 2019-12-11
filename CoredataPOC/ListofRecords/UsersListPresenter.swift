//
//  UsersListPresenter.swift
//  CoredataPOC
//
//  Created by Wipro on 11/12/19.
//  Copyright © 2019 wipro. All rights reserved.
//

import UIKit

protocol FetchUsersListProtocol
{
    func presentFetchedUsersList(response: UsersListModel.FetchUsers.Response)
}


class UsersListPresenter: FetchUsersListProtocol {
     weak var viewController: DisplayUsersList?
    
    func presentFetchedUsersList(response: UsersListModel.FetchUsers.Response)  {
        
        
    }
}
