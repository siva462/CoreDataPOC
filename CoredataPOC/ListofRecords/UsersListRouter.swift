//
//  UsersListRouter.swift
//  CoredataPOC
//
//  Created by Wipro on 11/12/19.
//  Copyright © 2019 wipro. All rights reserved.
//

import UIKit

@objc protocol UsersRoutingLogic
{
    func routeToCreateUser()
    //func routeToShowOrder(segue: UIStoryboardSegue?)
}

class UsersListRouter: NSObject, UsersRoutingLogic {
    weak var viewController: UsersListViewController?
    var dataStore: UsersListDataStore?

    func routeToCreateUser()
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CreateUserViewController") as! CreateUserViewController
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    
}
