// Playground - noun: a place where people can play

import UIKit



for i in 1...20 {
    if (i % 3 == 0) && (i % 5 == 0)
    {
        println("FizzBuzz");
    } else if (i % 3 == 0) {
        println("Fizz 3")
    } else if (i % 5 == 0 ) {
        println("Buzz 5");
    } else {
        println(i)
    }
}
