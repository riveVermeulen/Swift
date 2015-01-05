// Playground - noun: a place where people can play

import UIKit

//Accept two int parameters
//Figures out if the first parameter is divisible by the second
//Returns a Bool optional
//If the number is divisible it return a true else it returns a nil
//Call the function with 2 numbers and then print out whether “Divisible” or “Not Divisible

func isDivisible(#number1 : Int , #number2 : Int) -> Bool? {


    if number1 % number2 == 0 {
        
        return true
    } else {
        
        return nil
    }
}

if let result = isDivisible(number1: 2, number2: 10){

    println("Divisible")
}else{
    println("Not Divisible")
}


func isNotDivisible(#dividend: Int, #divisor: Int) -> Bool {
    if dividend % divisor == 0 ! {
        
        return true
    }
        return false
    
}

isNotDivisible(dividend: 4, divisor: 16)