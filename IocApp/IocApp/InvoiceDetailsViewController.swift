//
//  InvoiceDetailsViewController.swift
//  IocApp
//
//  Created by arton on 7/15/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import UIKit

class InvoiceDetailsViewController: UIViewController {

    @IBOutlet weak var txtemri: UILabel!
    
    @IBOutlet weak var txtid: UILabel!
    
    @IBOutlet weak var txtitle: UILabel!
    
    @IBOutlet weak var txttype: UILabel!
    
    @IBOutlet weak var txtsum: UILabel!
    
    @IBOutlet weak var txtdate: UILabel!
    
    @IBOutlet weak var txtcomment: UILabel!
    
    
    var invoice:Invoice?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtemri.text = invoice?.name
        txtid.text = invoice?.id
        txtitle.text = invoice?.title
        txttype.text = invoice?.type
        txtsum.text = invoice?.sum
        txtdate.text = invoice?.date
        txtcomment.text = invoice?.comment
        // Do any additional setup after loading the view.
        //test
    }



}
