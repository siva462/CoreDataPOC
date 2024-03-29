//
//  CreateUserModels.swift
//  CoredataPOC
//
//  Created by Wipro on 12/12/19.
//  Copyright (c) 2019 wipro. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum CreateUser
{
    struct CreateuserFields
    {
        // MARK: Contact info
        var firstname: String
        var lastname: String
        var email: String
    }
  // MARK: Use cases
  
  enum Something
  {
    struct Request
    {
        var createUserFields: CreateuserFields
    }
    struct Response
    {
        var user: CUsers?
        
    }
    struct ViewModel
    {
        var user: CUsers?

    }
  }
}
