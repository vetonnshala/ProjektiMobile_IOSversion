//
//  CTMyinvViewCell.swift
//  IocApp
//
//  Created by arton on 7/14/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import UIKit

class CTMyinvViewCell: UITableViewCell {

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var txtdate: UILabel!
    @IBOutlet weak var txttitle: UILabel!
    @IBOutlet weak var txtsum: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
