//
//  Simpsons.swift
//  SimpsonBook
//
//  Created by Ozan USTUNDAG on 6.01.2022.
//

import Foundation
import UIKit

class Simpsons{
    
    var images = [UIImage]()
    var names = [String]()
    var jobs = [String]()
    

    init(){
      
            images.append(UIImage(named: "Lisa.jpg")!)
            images.append(UIImage(named: "Maggie.jpg")!)
            images.append(UIImage(named: "Homer.jpg")!)
            images.append(UIImage(named: "Bart.jpg")!)
            images.append(UIImage(named: "Marge.jpg")!)
       
      
            names.append("Lisa")
            names.append("Maggie")
            names.append("Homer")
            names.append("Bart")
            names.append("Marge")
      
            jobs.append("Student")
            jobs.append("Baby")
            jobs.append("Worker")
            jobs.append("Student")
            jobs.append("House Wife")
            
        }      
        
  
    
    
}
