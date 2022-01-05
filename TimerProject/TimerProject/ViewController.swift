//
//  ViewController.swift
//  TimerProject
//
//  Created by Ozan USTUNDAG on 5.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
       
        
    }

    @IBAction func buttonClicked(_ sender: Any) {
        
      
        
        print("button clicked")
        
    }
    
    @objc func timerFunction(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0{
            timer.invalidate()
            timeLabel.text = "Times's over"
        }
    }
}
 




