//
//  ProgrammersListTableViewController.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import UIKit

class ProgrammersListTableViewController: UITableViewController {

    var presenter: ProgrammerListPresenter!

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewReady()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.presenter.numberOfRows
    }

}
