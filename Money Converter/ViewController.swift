//
//  ViewController.swift
//  Money Converter
//
//  Created by PT on 06.06.2020.
//  Copyright © 2020 PT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBOutlet weak var coursePicker: UIPickerView!
    @IBOutlet weak var summTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    let courses = ["What you want me to do?",
                   "$ -> ₽","$ -> €","$ -> £(фунт)", "$ -> ₴(гривна)",
                   "€ -> ₽","€ -> $", "€ -> £(фунт)", "€ -> ₴(гривна)",
                   "₽ -> $", "₽ -> €", "₽ -> £(фунт)", "₽ -> ₴(гривна)"]
    
    func numberOfComponents(in coursePicker: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courses[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 1 {
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!*74)) + "₽"
        }
        if row == 2 {
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!/1.13)) + "€"
        }
        if row == 3 {
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!*0.79)) + "£"
        }
        if row == 4 {
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!*26.59)) + "₴"
        }
        if row == 5{
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!*77)) + "₽"
        }
        if row == 6{
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!*1.13)) + "$"
        }
        if row == 7{
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!*0.89)) + "£"
        }
        if row == 8{
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!*30.03)) + "₴"
        }
        if row == 9{
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!/74)) + "$"
        }
        if row == 10{
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!/77)) + "€"
        }
        if row == 11{
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!*0.011)) + "£"
        }
        if row == 12{
            resultLabel.text = "This is " + String(NSString(format: "%.2f", Double(summTF.text!)!*0.39)) + "₴"
        }

        
        
        
    }
    

    
    
    
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
           self.view.endEditing(true)
       }
    
    
    
    
}

