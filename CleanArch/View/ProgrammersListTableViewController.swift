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

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier") as! ProgrammerCellView

        self.presenter.configure(cell: cell, forRow: indexPath.row)

        return cell as! UITableViewCell
    }

}
