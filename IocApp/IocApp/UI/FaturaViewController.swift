//
//  FaturaViewController.swift
//  IocApp
//
//  Created by arton on 7/13/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import UIKit

class FaturaViewController: UIViewController {

    @IBOutlet weak var btnnewinv: UIButton!
    @IBOutlet weak var btnmyinv: UIButton!
    @IBOutlet weak var btnallinv: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "fatura"
        
        btnnewinv.layer.cornerRadius = btnnewinv.frame.height / 2
        btnmyinv.layer.cornerRadius = btnmyinv.frame.height / 2
        btnallinv.layer.cornerRadius = btnallinv.frame.height / 2
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
