// Playground - noun: a place where people can play

import UIKit

class Button {
    var width: Double
    var height: Double
    
    init(width:Double, height:Double){
        self.width = width
        self.height = height
    }
    
    func scaleBy(points: Double){
        width += points
        height += points
    }
}

class RoundButton: Button {
    var cornerRadius: Double = 5.0
    
    init(width:Double,height:Double,cornerRadius:Double){
        self.cornerRadius = cornerRadius
        super.init(width: width, height: height)
        
    }  
}