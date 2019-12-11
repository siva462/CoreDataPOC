//
//  UsersListViewController.swift
//  CoredataPOC
//
//  Created by Wipro on 11/12/19.
//  Copyright © 2019 wipro. All rights reserved.
//

import UIKit

protocol DisplayUsersList: class {
    func displayFetchedUserlist(usersList: UsersListModel.FetchUsers.ViewModel)
}

class UsersListViewController: UIViewController, DisplayUsersList {
    var userListArr: [UsersListModel.FetchUsers.ViewModel.DisplayedOrder] = []
    var interactor: UsersListIntractor?
    var router: (NSObjectProtocol & UsersRoutingLogic & UsersListDataStore)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewController = self
        let interactor = UsersListIntractor()
        let presenter = UsersListPresenter()
        let router = UsersListRouter()
        viewController.interactor = interactor
        viewController.router = router as? (UsersListDataStore & UsersRoutingLogic & NSObjectProtocol)
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        
        let request = UsersListModel.FetchUsers.Request()

        interactor.fetchList(request: request)

    }
    
    func displayFetchedUserlist(usersList: UsersListModel.FetchUsers.ViewModel) {
        userListArr = usersList.displayedOrders
    }

}

extension UsersListViewController: UITableViewDelegate, UITableViewDataSource {
     func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return userListArr.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
       
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

//        cell?.textLabel?.text = displayedOrder.date
//        cell?.detailTextLabel?.text = displayedOrder.total
        return cell
    }
}
