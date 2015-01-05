// Playground - noun: a place where people can play

import UIKit

let cards = 1...13

for card in cards {
    if card == 11 {
        println("\(card) = Jack");
    } else if card == 12 {
        println("\(card) = Queen")
    }else if card == 13 {
        println("\(card) = King")
    }else{
        println(card)
    }

}
