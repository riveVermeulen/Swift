//
//  Array2D.swift
//  SwiftTetris
//
//  Created by Rive Vermeulen on 29/09/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//

import Foundation

//#1    we're defining a class named Array2D

//      Notice that in the class' declaration we provide a typed parameter: <T>. This allows our array to store any type of data and therefore remain a general-purpose tool.
class Array2D<T> {
    
    let columns: Int
    let rows: Int
    
    
    /*  
        At #2 we declare an actual Swift array; it will be the underlying data structure which maintains references to our 
        objects. It's declared with type <T?>. A ? in Swift symbolizes an optional value. An optional value is just that, 
        optional. Optional variables may or may not contain data, and they may in fact be nil, or empty. nil locations found 
        on our game board will represent empty spots where no block is present.
    */
    var arrayGrid: Array<T?>
    
    init(columns: Int, rows: Int){
        
        self.columns = columns
        self.rows = rows
        
        //During our initialization at #3, we instantiate our internal array structure with a size of rows * columns. This guarantees that Array2D can store as many objects as our game board requires, 200 in our case.
        
        arrayGrid = Array<T?>(count:rows * columns, repeatedValue: nil)

    }
    
    /*
        #4 we create a custom subscript for Array2D. We mentioned earlier that we wanted to have a subscript capable of supporting array[column, row] - this accomplishes just that. The getter is fairly self explanatory. To get the value at a given location we need to multiply the provided row by the class variable columns, then add the column number to reach the final destination.
    */
    
    //subcripts = shortcuts for retrieving elements from list colleciton of a sequence
    
    
    subscript(column: Int, row: Int) ->T? {
        get{
            return arrayGrid[(row * columns) + column]
        }
        set(newValue) {
            arrayGrid[(row * columns) + column] = newValue
        }
    
    }
}

