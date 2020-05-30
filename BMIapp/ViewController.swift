//
//  ViewController.swift
//  BMIapp
//
//  Created by stoller on 2020/5/30.
//  Copyright © 2020年 cgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var BMILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: Any) {
        let heightText = heightTextField.text!
        let weightText = weightTextField.text!
        let height = Double(heightText)
        let weight = Double(weightText)
        
        if height != nil, weight != nil{
            let heightMeter = height! / 100
            let bmi = weight! / ( heightMeter * heightMeter )
            BMILabel.text = String(format:"%.2f",bmi)
        }
        view.endEditing(true)
    }
}

