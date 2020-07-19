//
//  ViewController.swift
//  IocApp
//
//  Created by Veton Shala on 7/12/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import UIKit
import SQLite3

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var txtpassword: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var fjalekalimiReg: UITextField!
    @IBOutlet weak var kompaniReg: UITextField!
    @IBOutlet weak var emailReg: UITextField!
    @IBOutlet weak var perdoruesiReg: UITextField!
   
    @IBAction func regjistrohuBtn(_ sender: Any) {
        let perdoruesi = perdoruesiReg.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let emaili = emailReg.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let kompaniaID = kompaniReg.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let fjalekalimi = fjalekalimiReg.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if(perdoruesi?.isEmpty)!{
            print ("Fusha Perdoruesi eshte e zbrazet!")
            return;
        }
        if(emaili?.isEmpty)!{
            print ("Fusha Perdoruesi eshte e zbrazet!")
            return;
        }
        if(kompaniaID?.isEmpty)!{
            print ("Fusha Perdoruesi eshte e zbrazet!")
            return;
        }
        if(fjalekalimi?.isEmpty)!{
            print ("Fusha Perdoruesi eshte e zbrazet!")
            return;
        }
        
        var stmt: OpaquePointer?
        let insertQuery = "INSERT INTO uusers (name, email, companyID, password) values (?,?,?,?)"
        
        if sqlite3_prepare(db, insertQuery, -1, &stmt, nil) != SQLITE_OK {
            print("Error binding query")
        }
        
        if sqlite3_bind_text(stmt, 1, perdoruesi, -1, nil) != SQLITE_OK {
            print("Error binding perdoruesi")
        }
        if sqlite3_bind_text(stmt, 2, emaili, -1, nil) != SQLITE_OK {
            print("Error binding emaili")
        }
        if sqlite3_bind_int(stmt, 3, (kompaniaID! as NSString).intValue) != SQLITE_OK {
            print("Error binding kompaniaID")
        }
        if sqlite3_bind_text(stmt, 3, fjalekalimi, -1, nil) != SQLITE_OK {
            print("Error binding fjalekalimin")
        }
        if sqlite3_step(stmt) == SQLITE_DONE{
            print ("User added")
            let alert = UIAlertController(title: "Sukses!", message: "Perdoruesi u Shtua", preferredStyle:UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title:"Mbyll",style:UIAlertActionStyle.default, handler:nil))
            self.present(alert, animated:true, completion:nil)
        }
        
    }
    
    var db: OpaquePointer?
    
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
        
     let fileurl = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("users.sqlite")
     //   print(fileurl)
        if sqlite3_open(fileurl.path, &db) != SQLITE_OK {
            print ("Error opening database")
            return
        }
        
        let createTableQuery = "CREATE TABLE IF NOT EXISTS uusers (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, companyID INTEGER,password TEXT)"
        
        if sqlite3_exec(db, createTableQuery, nil, nil, nil) != SQLITE_OK {
            print ("Error creating table")
            return
        }

        print ("Everything okay")
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
