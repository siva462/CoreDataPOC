//
//  CustomUser.swift
//  CoredataPOC
//
//  Created by Wipro on 12/12/19.
//  Copyright © 2019 wipro. All rights reserved.
//

import UIKit

class CustomUser: NSObject {
    var first_name = String()
    var email = String()
    var last_name = String()
    
    init(first_name: String, email: String, last_name: String)
    {
        self.first_name = first_name
        self.email = email
        self.last_name = last_name
    }
}
