//
//  UsersListModel.swift
//  CoredataPOC
//
//  Created by Wipro on 11/12/19.
//  Copyright © 2019 wipro. All rights reserved.
//

import UIKit

class UsersListModel: NSObject {
    // MARK: Use cases
    
    enum FetchUsers
    {
        struct Request
        {
        }
        struct Response
        {
            var orders: [Users]
        }
        struct ViewModel
        {
            struct DisplayedOrder
            {
                var username: String
                var email: String
                var userid: Int
            
            }
            var displayedOrders: [DisplayedOrder]
        }
    }
    

}
