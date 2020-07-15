//
//  AllInvoicesViewController.swift
//  IocApp
//
//  Created by arton on 7/15/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import UIKit

class AllInvoicesViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    let elements = ["test","test"]
    var invoices = [Invoice]()
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        super.viewDidLoad()
        let inv1 = Invoice(id:"1",name:"Arton Thaqi",title:"Dreka",type:"Ushqim",comment:"Ska",date:"27/07/2020",sum:"100€")
        invoices.append(inv1)
        let inv2 = Invoice(id:"2",name:"Arton Thaqi",title:"Dreka",type:"Ushqim",comment:"Ska",date:"27/07/2020",sum:"100€")
        invoices.append(inv2)
        let inv3 = Invoice(id:"3",name:"Arton Thaqi",title:"Dreka",type:"Ushqim",comment:"Ska",date:"27/07/2020",sum:"100€")
        invoices.append(inv3)
        let inv4 = Invoice(id:"4",name:"Veton Shala",title:"Dreka",type:"Ushqim",comment:"Ska",date:"27/07/2020",sum:"100€")
        invoices.append(inv4)
        
    }
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return invoices.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! CTAllinvTableViewCell
        
        cell.cellView.layer.cornerRadius = 10
        
        cell.txttitle.text = invoices [indexPath.row].title
        cell.txtdate.text = invoices [indexPath.row].date
        cell.txtsum.text = invoices [indexPath.row].sum
        cell.txtname.text = invoices [indexPath.row].name
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedIndex = indexPath.row
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinatio = segue.destination as? InvoiceDetailsViewController{
            destinatio.invoice = invoices[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
}
