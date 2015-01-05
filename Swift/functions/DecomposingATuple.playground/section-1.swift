// Playground - noun: a place where people can play

import UIKit

func searchNames(#name: String)-> (Bool,String)
{
    let names = ["Hamed","Franck","Marwen","Claudia","Kevin","Vincent","Daen","Daphnes","Wouter","Jaimi","Tim"];
    
    var found = (false,"\(name) is not in the Bestfriend List");
    
    for n in names {
        if n == name {
            found = (true,"\(name) is in the friend List")
            
        }
    }
    return found;

}

let (found,description) = searchNames(name: "Franck");




func greeting(person: String) -> (greeting : String,language : String) {
    let language = "English"
    let greeting = "Hello \(person)"
    
    var tuple = (greeting,language)
    return tuple
}

greeting("John")


var result = greeting("Tom");

println(result.language)