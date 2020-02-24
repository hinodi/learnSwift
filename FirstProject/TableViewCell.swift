//
//  TableViewCell.swift
//  FirstProject
//
//  Created by Huynh Ngoc Dinh on 2/9/19.
//  Copyright © 2019 Huynh Ngoc Dinh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myImageInCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
