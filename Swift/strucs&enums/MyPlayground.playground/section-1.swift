// Playground - noun: a place where people can play

import UIKit

enum Day: Int{
    case Monday = 1,Tuesday,Wednesday,Thursday,Friday,Saterday,Sunday
    init(){
        self = .Monday
    }
    func daysTillWeekend()-> Int{
        
        return Day.Saterday.rawValue - self.rawValue
    }
    func dayString()-> String{
        switch self{
            case .Monday:
                return "Monday"
            case .Thursday:
                return "Thursday"
            case .Saterday:
                return "Saterday"
            default:
                return "Other day "
            
        }
    }

}
var yesterday = Day();
yesterday.rawValue


var today = Day.Wednesday

today.daysTillWeekend()

var holiday = Day.Saterday

holiday.daysTillWeekend()
holiday.dayString()