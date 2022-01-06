//
//  Musicians.swift
//  MusicianClass
//
//  Created by Ozan USTUNDAG on 6.01.2022.
//

import Foundation

enum musicianType {
case LeadGuitar
case Vocalist
case Drummer
    
}
class Musicians{
    
    //properties
    var name : String
    var age : Int
    var instrumant : String
    
    var type : musicianType
    
    
    //initializer(constructor)
    init(nameInit:String,ageInit: Int,insturmentInit:String,typeInit: musicianType){
        name = nameInit
        age = ageInit
        instrumant = insturmentInit
        type = typeInit
        print("musician created")
        
        
    }
    
    func sing(){
        print("nothing else matters")
    }
    
    private func privİmages(){
        
        print("cok gizliii")
    }
}
