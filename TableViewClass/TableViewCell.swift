//
//  TableViewCell.swift
//  TableViewClass
//
//  Created by miceli on 4/22/17.
//  Copyright © 2017 miceli. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var DetailEvent: UILabel!
    @IBOutlet weak var titleEvent: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
