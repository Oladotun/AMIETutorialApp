//
//  StudentsTableViewCell.swift
//  AmieTutorialApp
//
//  Created by Dotun Opasina on 3/15/16.
//  Copyright © 2016 Dotun Opasina. All rights reserved.
//

import UIKit

class StudentsTableViewCell: UITableViewCell {

    @IBOutlet weak var studentLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
