///////////////////////////////////////
//
// Course:  Object Oriented Swift
// Stage:   Classes and Objects
// Video:   From Structs to Classes
// Author:  Amit Bijlani
//
///////////////////////////////////////


import UIKit

class Product {
    var title: String = ""
    var price: Double = 0.0
}

let quadcopter = Product()
quadcopter.title
quadcopter.price

quadcopter.title = "Quadcopter"
quadcopter.price = 499.99

