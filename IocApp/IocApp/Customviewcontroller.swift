//
//  Customviewcontroller.swift
//  IocApp
//
//  Created by Vehbi Restelica on 7/16/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//


import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak var View: UIView!
    @IBOutlet weak var porosiaID: UILabel!
    
    @IBOutlet weak var statusi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool){
        super.setSelected(selected, animated: animated)
    }
    
}
