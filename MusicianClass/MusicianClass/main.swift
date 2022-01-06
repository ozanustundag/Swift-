//
//  main.swift
//  MusicianClass
//
//  Created by Ozan USTUNDAG on 6.01.2022.
//

import Foundation



let james = Musicians(nameInit: "ozan", ageInit: 15, insturmentInit: "guitar",typeInit: musicianType.LeadGuitar)

//james.age = 50


//print(james.age)
//print(james.type)
james.sing()

let kirk = SuperMusician(nameInit: "kirk", ageInit: 32, insturmentInit: "drummer", typeInit: .LeadGuitar)
kirk.sing()

//kirk.sing2()

