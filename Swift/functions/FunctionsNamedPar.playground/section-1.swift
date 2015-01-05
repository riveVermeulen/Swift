// Playground - noun: a place where people can play

import UIKit

println("Swift Functions");



func calculateArea(#height: Int,#width: Int)->Int
{
    return height*width;
}

println("Area = \(calculateArea(height: 10,width: 12))");
