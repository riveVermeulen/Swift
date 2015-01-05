///////////////////////////////////////
//
// Course:  Object-Oriented Swift
// Stage:   Methods and Inheritance
// Video:   Inheritance
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
    
    func discountedPrice(percentage: Double)  {
        price = price - (price * percentage / 100)
    }
}

enum Size {
    case Small, Medium, Large
    init() {
        self = .Small
    }
}

class Clothing: Product {
    var size = Size()
}

var tshirt = Clothing(title: "Vintage", price: 49.99)
tshirt.title
tshirt.price
tshirt.discountedPrice(10)
tshirt.size

let quadcopter = Product(title: "Quadcopter", price: 499.99)











