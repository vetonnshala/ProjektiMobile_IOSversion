//
//  ViewController.swift
//  IocApp
//
//  Created by Veton Shala on 7/12/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    
    let elements: [String] = ["1001","1002","1003","1004","1005","1006","1007"]
    let statusi = ["Paguar","Paguar","Ne Proces","Pa Paguar","Paguar","Ne Proces","Pa Paguar"]
    
    func dissmissKeyboardView()
    {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title:"Done",style: .plain,target: self,action:#selector(self.dissmissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        txtpassword?.inputAccessoryView = toolBar
        txtemail?.inputAccessoryView = toolBar

        
    }
    
    @objc func dissmissKeyboard(){
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dissmissKeyboardView()
        // Do any additional setup after loading the view, typically from a nib.

        tableView?.delegate=self
        tableView?.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return elements.count
        
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CustomTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "customCell") as! CustomTableViewCell
        cell.porosiaID.text=elements[indexPath.row]
        cell.statusi.text=statusi[indexPath.row]
        
        
        return cell
    }
}

