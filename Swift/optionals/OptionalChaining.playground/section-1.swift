// Playground - noun: a place where people can play

import UIKit

func sendNoticeTo (#aptNumber : Int){

    println(aptNumber)
}

func findApt (aptNumber : String) -> String? {

    let aptNumbers = ["101","202","303","404"]
    for tempAptNumber in aptNumbers {
        
        if (tempAptNumber == aptNumber)
        {
            return aptNumber
        }
    }
    return nil
}

if let cultprit = findApt("101")?.toInt() {
    println("Apt Found: \(cultprit)")
    sendNoticeTo(aptNumber: cultprit)

    
}