// Playground - noun: a place where people can play

import UIKit

enum Status {
    case Succes(String),Failure(String)
}

let downloadStatus = Status.Failure("Network unavailable")

switch downloadStatus {
    case .Succes(let succes):
        println(succes)
    case .Failure(let failure):
        println(failure)

}