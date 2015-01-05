// Playground - noun: a place where people can play

import UIKit




//class = Reference Type
class Product {
    var title: String
    var price: Double = 0.0
    
    init(title: String, price: Double) {
        self.title = title
        self.price = price
    }

}

var phoneClass = Product(title: "Iphone6", price: 800)
var bigPhone = phoneClass

bigPhone.title
bigPhone.title = "Nexus"

phoneClass.title

//struct = Value type
struct ProductStruct {
    var title: String
    var price: Double = 0.0
}
//copieng the values independed values
var phoneStruct = ProductStruct(title: "Windows", price: 300)
var bigPhoneStruct = phoneStruct

bigPhoneStruct.title
bigPhoneStruct.title = "Iphone"
bigPhoneStruct.title
phoneStruct.title