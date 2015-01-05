// Playground - noun: a place where people can play

import UIKit


let height = 12;
let width = 10;

let area = height * width

func calculateArea(height: Int,width : Int)
{

    
    let height = 12;
    let width = 10;
    
    let area = height * width
    println(area);
}

//-> return type

func calculateAreaReturn(height : Int, width : Int) ->Int
{
    let area = height * width

    return area
}

calculateArea(10,20)
calculateAreaReturn(10, 22)