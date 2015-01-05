// Playground - noun: a place where people can play

import UIKit

func searchNames(#name : String) -> (Bool,String) {
    let names = ["Rive Vermeulen","Claudia Mc Kenzie","Kevin Kofi","Karin Vermeulen"];
    
    var found = (false,"\(name) is not in the list");
    
    for n in names {
        
        if n == name {
            found = (true,"\(name) is in the list");
        }
    }
    return found
}

let result = searchNames(name: "Rive Vermeulen");

result.1

if (result.0){
    //grant acces
}else{
    //acces denied
}

