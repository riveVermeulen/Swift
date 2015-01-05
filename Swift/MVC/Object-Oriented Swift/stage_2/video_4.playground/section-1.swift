///////////////////////////////////////
//
// Course:  Object-Oriented Swift
// Stage:   Methods and Inheritance
// Video:   Inheritance and Initializers
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
    let designer: String
    
    init (title: String, price: Double, designer: String) {
        self.designer = designer
        super.init(title: title, price: price)
    }
    
    convenience init (title: String) {
        self.init(title:title,price:99,designer:"Calvin Klein")
    }
        
    override func discountedPrice(_ percentage: Double = 10.0) -> Double {
        return super.discountedPrice(percentage)
    }
}

var tshirt = Clothing(title: "Vintage")
tshirt.title
tshirt.price
tshirt.designer
tshirt.discountedPrice(50)
tshirt.size

let quadcopter = Product(title: "Quadcopter", price: 499.99)












