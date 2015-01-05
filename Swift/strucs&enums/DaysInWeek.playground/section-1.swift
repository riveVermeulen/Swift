// Playground - noun: a place where people can play

import UIKit

enum Day: Int{
    case Monday = 1
    ,Tuesday
    ,Wednesday
    ,Thurseday
    ,Friday
    ,Saterday
    case Sunday
    
}
//array is list of indext values
let days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saterday","Sunday"];

func weekdayOrWeekend(dayOfWeek : Day)-> String{

    switch dayOfWeek{
    case .Monday,.Tuesday,.Wednesday,.Thurseday,Day.Friday:
            return "Its a weekday"
        //break
        case Day.Saterday,Day.Sunday:
            return "Yay! It's the weekend"
        //break
        default:
            return "no day found"
        //break
    }
}

func daysTillWeekend(day: Day)->Int{
    return Day.Saterday.rawValue - day.rawValue
}
weekdayOrWeekend(Day.Monday)


//if let is de veiligste manier om een optional te unwrappen !!
if let firstDayOfWeek = Day(rawValue: 1){

    daysTillWeekend(firstDayOfWeek)
}


