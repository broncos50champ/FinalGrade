//
//  ViewController.swift
//  FinalGrade
//
//  Created by Luis Segovia on 3/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var secTextfield: UITextField!
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: Any) {
    
        var first1 = textField3.text ?? ""
        var second2 = textField.text ?? ""
        var first12 = secTextfield.text ?? ""
        var Desired = Double(first12) ?? 0.0
        var w100 = Double (first1) ?? 0.0
        var Current = Double (second2) ?? 0.0
        
        var w = w100 / 100.0
        var g = Desired - (1-w) * Current
        var f = g / w
        
        firstLabel.text="\(f)"
        
    }
 
    
    
    
    
    
    
    @IBOutlet weak var firstLabel: UILabel!
}

