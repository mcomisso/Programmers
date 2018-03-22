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
