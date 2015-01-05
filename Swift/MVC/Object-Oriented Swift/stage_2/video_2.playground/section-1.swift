///////////////////////////////////////
//
// Course:  Object-Oriented Swift
// Stage:   Methods and Inheritance
// Video:   Overriding Methods
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

enum Size {
    case Small, Medium, Large
    init() {
        self = .Small
    }
}

class Clothing: Product {
    var size = Size()
    override func discountedPrice(_ percentage: Double = 10.0) -> Double {
        return super.discountedPrice(percentage)
    }
}

var tshirt = Clothing(title: "Vintage", price: 49.99)
tshirt.title
tshirt.price
tshirt.discountedPrice(50)
tshirt.size

let quadcopter = Product(title: "Quadcopter", price: 499.99)












