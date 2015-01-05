/////////////////////////////////////////
//
// Course:  Object-Oriented Swift
// Stage:   Properties
// Video:   Optional Property
// Author:  Amit Bijlani
//
///////////////////////////////////////

import UIKit

class Product {
    let title: String
    var price: Double = 0.0
    
    init(title: String, price: Double) {
        self.title = title
        self.price = price
    }
    
    func discountedPrice(percentage: Double) -> Double {
        return price - (price * percentage / 100)
    }
}

class Electronic: Product {
    var batteries: Bool?
}

let toy = Electronic(title: "RC Car", price: 79)
toy.batteries = false






















