//
//  CreateUserRouter.swift
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

@objc protocol CreateUserRoutingLogic
{
  func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol CreateUserDataPassing
{
  var dataStore: CreateUserDataStore? { get }
}

class CreateUserRouter: NSObject, CreateUserRoutingLogic, CreateUserDataPassing
{
  weak var viewController: CreateUserViewController?
  var dataStore: CreateUserDataStore?
  
  // MARK: Routing
  
  func routeToSomewhere(segue: UIStoryboardSegue?)
  {
    viewController?.navigationController?.popViewController(animated: true)
  }

  // MARK: Navigation
  
  //func navigateToSomewhere(source: CreateUserViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: CreateUserDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
