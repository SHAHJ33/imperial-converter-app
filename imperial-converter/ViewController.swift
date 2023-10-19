//
//  ViewController.swift
//  imperial-converter
//
//  Created by ShahJee on 28/09/2023.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputA: UITextField!
    @IBOutlet weak var controlA: UISegmentedControl!
    
    @IBOutlet weak var inputB: UITextField!
    @IBOutlet weak var controlB: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputA.text = "60"
        inputB.text = "60"
        
        controlA.selectedSegmentIndex = 0
        controlB.selectedSegmentIndex = 0
        
        calculate()
    }
    
    
    @IBAction func controlAChanged(_ sender: UISegmentedControl) {
        print("Control A -> \(sender.selectedSegmentIndex)")
    }
    
    @IBAction func controlBChanged(_ sender: UISegmentedControl) {
        print("Control B -> \(sender.selectedSegmentIndex)")
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculate()
    }
    
    func calculate() {
        
        if controlA.selectedSegmentIndex == 0 && controlB.selectedSegmentIndex == 0 {
            if let aValue = inputA.text {
                inputB.text = aValue
            }
        } else if controlA.selectedSegmentIndex == 1 && controlB.selectedSegmentIndex == 1 {
            if let aValue = inputA.text {
                inputB.text = aValue
            }
        } else if controlA.selectedSegmentIndex == 0 && controlB.selectedSegmentIndex == 1 {
            if let aValue = inputA.text {
                let dValue = Double(aValue)
                let kValue = dValue! * 1.609344
                inputB.text = "\(kValue)"
            }
        } else if controlA.selectedSegmentIndex == 1 && controlB.selectedSegmentIndex == 0 {
            if let aValue = inputA.text {
                let dValue = Double(aValue)
                let mValue = dValue! * 0.62137119
                inputB.text = "\(mValue)"
            }
        }
    }
}

