// Playground - noun: a place where people can play

import UIKit

enum Size{
    case Small,Medium,Large,ExtraLarge
    init(){
        self = .Small
    }
}


class Product{
    let title : String
    var price : Double = 0.0
    
    init(_title: String, _price:Double){
    
        self.title = _title
        self.price = _price
    }
    
    /*func discountedPrice(percentage: Double) -> Double{
    
        return price - (price * percentage / 100)
    }*/
    func discountedPrice(percentage: Double) -> Double{
        
        return  price - (price * percentage / 100)
    }

    
    
}

let macbook = Product(_title: "Macbook", _price: 999.99)
macbook.discountedPrice(10)




class Clothing: Product {
    var size :Size = Size()
    let designer: String
    
    init (title:String,price:Double,_designer :String){
        self.designer = _designer
        super.init(_title: title, _price: price)
    }
    
    //we geven een default value hier de parameter moet optional zijn dit gebeurt door _ te zetten
    override func discountedPrice(_ percentage: Double = 10.0) -> Double{
        
        return  super.discountedPrice(percentage)
    }
}

var tshirt = Clothing(title: "Vintage", price: 20.00,_designer: "Prada")
tshirt.size = Size.Medium

switch tshirt.size {
    case .Small:
        println("Voor mietjes")
    case .Medium:
        println("Blijven trainen")
    default:
        println("Jullie komen er op een dag")
}
