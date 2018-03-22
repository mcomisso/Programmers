//
//  ProgrammerTableViewCell.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import UIKit

class ProgrammerTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var favouriteLabel: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension ProgrammerTableViewCell: ProgrammerCellView {
    func display(name: String) {
        self.nameLabel.text = name
    }

    func display(date: String) {
        self.dateLabel.text = date
    }

    func display(isFavourite: Bool) {
        self.favouriteLabel.isHidden = !isFavourite
    }


}
