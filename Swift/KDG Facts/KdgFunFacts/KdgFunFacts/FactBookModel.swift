//
//  FactBookModel.swift
//  KdgFunFacts
//
//  Created by Rive Vermeulen on 10/10/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//

import Foundation

struct FactBookModel {
    
    let factsArray = [
        "Rive is de beste Ios developer in Mct.",
        "Wist je dat deze facts uit de model klasse komen, remember mvc hehe",
        "Webspecialisatie is nog wel tof om te doen",
        "Campus Hoboken is echt geen toffe Campus",
        "Claudia is een mokke !!!",
        "Kdg kampt met een tekort aan model leerlingen",
        "Wauw da masheert",
        "Kdg Facts app is een succes aan het worden",
        "En goaan !!!",
        "Studeren is nog altijd het tofste om te doen  HIP HEUY" ]
    
    func randomFact() -> String {
        var randomNumber = Int(arc4random_uniform(UInt32(factsArray.count)));
        
        
        return factsArray[randomNumber];
    
    }
    
}