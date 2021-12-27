//
//  ViewController.swift
//  Calculator
//
//  Created by Ozan USTUNDAG on 27.12.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }



    @IBOutlet weak var input1: UITextField!
    
    @IBOutlet weak var input2: UITextField!
    
    
    @IBAction func sumButton(_ sender: Any) {
        // let firstNumber = Int(input1.text!)! // ilk ünlem text geleceğinden eminim. 2. ünlem integera çevrilceğinden eminim demek.
        if let firstNumber = Int(input1.text!){
           if let secondNumber = Int(input2.text!){
                
                let result = firstNumber + secondNumber
                resultLabel.text = String(result)            }
            else{
                resultLabel.text = "hata"
            }
            
        }
        else {
            
            resultLabel.text = "hata"
        }
        
        
        
        
        
    }
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func minusButton(_ sender: Any) {
        if let firstNumber = Int(input1.text!){
           if let secondNumber = Int(input2.text!){
                
                let result = firstNumber - secondNumber
                resultLabel.text = String(result)            }
            else{
                resultLabel.text = "hata"
            }
            
        }
        else {
            
            resultLabel.text = "hata"
        }
        
    }
    @IBAction func multiplyBtton(_ sender: Any) {
        if let firstNumber = Int(input1.text!){
           if let secondNumber = Int(input2.text!){
                
                let result = firstNumber * secondNumber
                resultLabel.text = String(result)            }
            else{
                resultLabel.text = "hata"
            }
            
        }
        else {
            
            resultLabel.text = "hata"
        }
        
    }
    @IBAction func divideButton(_ sender: Any) {
        if let firstNumber = Int(input1.text!){
           if let secondNumber = Int(input2.text!){
                
                let result = firstNumber / secondNumber
                resultLabel.text = String(result)            }
            else{
                resultLabel.text = "hata"
            }
            
        }
        else {
            
            resultLabel.text = "hata"
        }
        
    }
}

