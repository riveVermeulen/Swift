//
//  ColorWheel.swift
//  KdgFunFacts
//
//  Created by Rive Vermeulen on 21/10/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//

import Foundation
import UIKIt

struct ColorWheel {
    
    let colorArr = [
        UIColor(red: 90/255.0, green:187/255.0, blue: 181/255.0, alpha: 1),
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1),
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha:1),
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha:1),
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1)
    ]
    
    func randomColor() -> UIColor{
        
        var unsignedArrCount = UInt32(colorArr.count);
        var unsignedRandomNum = arc4random_uniform(unsignedArrCount)
        
        var randomNumber = Int(unsignedRandomNum);
        
        
        
        return colorArr[randomNumber];
    }

    
}