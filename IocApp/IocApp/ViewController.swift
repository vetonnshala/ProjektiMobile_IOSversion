//
//  ViewController.swift
//  IocApp
//
//  Created by Veton Shala on 7/12/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    func dissmissKeyboardView()
    {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title:"Done",style: .plain,target: self,action:#selector(self.dissmissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        txtpassword.inputAccessoryView = toolBar
        txtemail.inputAccessoryView = toolBar

        
    }
    
    @objc func dissmissKeyboard(){
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dissmissKeyboardView()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

