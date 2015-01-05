///////////////////////////////////////
//
// Course:  Object-Oriented Swift
// Stage:   Properties
// Video:   Computed Properties
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

class Furniture: Product {
    let height: Double
    let width: Double
    let length: Double
    var surfaceArea: Double {
        return length * width
    }
    
    init (title: String, price: Double, height: Double, width: Double, length: Double){
        self.height = height
        self.width = width
        self.length = length
        super.init(title: title, price: price)
    }
}

let table = Furniture(title: "Coffee Table", price: 300, height: 5, width: 10, length: 10)
table.surfaceArea
















