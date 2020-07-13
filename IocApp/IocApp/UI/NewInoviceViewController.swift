//
//  NewInoviceViewController.swift
//  IocApp
//
//  Created by arton on 7/13/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import UIKit

class NewInoviceViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate, UITextFieldDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categoryTypes.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categoryTypes[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedCategory = categoryTypes[row]
        txtkategoria.text = selectedCategory
        
    }
    

    var selectedCategory : String?
    
    @IBOutlet weak var txtcomment: UITextField!
    @IBOutlet weak var txtsum: UITextField!
    @IBOutlet weak var txttitel: UITextField!
    var categoryTypes = ["Ushqim","Karburant","Te Tjera"]
    
    func createPickerView()
    {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        
        txtkategoria.inputView = pickerView
        
    }
    
    func dissmissPickerView()
    {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title:"Done",style: .plain,target: self,action:#selector(self.dissmissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        txtkategoria.inputAccessoryView = toolBar
        txttitel.inputAccessoryView = toolBar
        txtsum.inputAccessoryView = toolBar
        txtcomment.inputAccessoryView = toolBar
        
    }
    
    @objc func dissmissKeyboard(){
        view.endEditing(true)
    }
    
    
    @IBOutlet weak var txtkategoria: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        createPickerView()
        dissmissPickerView()

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
