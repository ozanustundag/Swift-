//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Ozan USTUNDAG on 27.12.2021.
//

import UIKit

class ViewController: UIViewController {
    var myLabel = UILabel()
    var counter = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
       
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width*0.5 - width*0.8/2 , y: height*0.5 - 50/2, width: width*0.8, height: 50)
        view.addSubview(myLabel)
        
        
        let myButton = UIButton()
        myButton.setTitle("MY BUTTON", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.red, for: UIControl.State.normal)
        myButton.frame = CGRect.init(x: width*0.5-width*0.8/2, y: height*0.5, width: width*0.8, height: 50)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        
        
    }

    @objc func myAction(){
     
        myLabel.text = String(counter) + "tapped"
        counter +=  1
    }
}

