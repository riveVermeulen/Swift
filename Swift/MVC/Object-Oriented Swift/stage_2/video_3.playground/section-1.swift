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


class Electronic: Product {
    //OPTIONAL properties
    var batteries: Bool?
    
}


let toy = Electronic(title: "RC Car ", price: 77.99)
toy.batteries = false
if let batterietjes = toy.batteries{
    batterietjes
    if batterietjes {
        println("dssddd")
    }else{
        println("GAY")
    }
}

/*

class Furniture: Product {
    var height: Double
    var width: Double
    var length: Double
    //computed Properties Getter method setter methode
    var surfaceArea:Double{
        get{
            return length * width
        }
        set{
            self.length = sqrt(newValue)
            self.width = sqrt(newValue)
        }
        
        
    }
    
    init(title: String, price: Double,height: Double,width:Double,length:Double){
        
        self.height = height
        self.width = width
        self.length = length
        
        super.init(title: title, price: price)
    }
}


let table = Furniture(title: "tafel", price: 999.99, height: 5, width: 15, length: 10);
//read only
table.surfaceArea


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
    //Convenience Initializer is een die default values mee geeft en de self.init kan aangesproken worden
    convenience init(title:String){
        self.init(title: title, price: 99, designer: "Calvin Klein")
    }
    
    override func discountedPrice(_ percentage: Double = 10.0) -> Double {
        return super.discountedPrice(percentage)
    }
}

var tshirt = Clothing(title: "Vintage", price: 49.99, designer: "Prada")
var tshirt1 = Clothing(title: "Classy")
tshirt.title
tshirt.price
tshirt.discountedPrice(50)
tshirt.size

let quadcopter = Product(title: "Quadcopter", price: 499.99)*/






