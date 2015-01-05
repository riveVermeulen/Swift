// Playground - noun: a place where people can play

import UIKit

let cards = 1...13

for card in cards {
    switch card {
    case 11:
        println("Jack");
        break
    case 12:
        println("Queen");
        break
    case 13:
        println("King");
        break
    default:
        println(card);
    }
}

for card in cards {
    switch card {
    case 1,2,11...13:
        println("TRUMP CARDS");
    default:
        println(card);
    }
}