// Playground - noun: a place where people can play

import UIKit

var todo : [String] = ["Return calls","Write Blog","Cook Dinner","Pickup Laundry"];

//for in loop

for item in todo{
    println(item+"\n");
}

for number in 1...10{
    println("\(number) times 2 is \(number*2) ")

}
println("\n Nu minder dan:\n")
for number in 1..<10{
    println("\(number) times 2 is \(number*2) ")
    
}
