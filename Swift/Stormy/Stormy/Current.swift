//
//  Current.swift
//  Stormy
//
//  Created by Rive Vermeulen on 5/12/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//

import Foundation
import UIKit

//stored properties for are class
struct Current {
    //var currentTimeIntValue:Int
    //kan een variable nill bevatten en hoeft men pas achteraf te initialiseren
    var currentTime: String?
    var temperature: Int?
    var humidity: Double
    var precipProbability: Double
    var summary: String
    var icon: UIImage?
    

    init(weatherDictionaryData: NSDictionary){
        //some Initialization here
        let currentWeather = weatherDictionaryData["currently"] as NSDictionary
        
        
        //swift weet niet welk type we terug krijgen dus we moeten ze downcasten naar een int

        
        humidity = currentWeather["humidity"] as Double
        precipProbability = currentWeather["precipProbability"] as Double
        summary = currentWeather["summary"] as String
        //icon = currentWeather["icon"] as String
        let fahrenheit = currentWeather["temperature"] as Int
        temperature = convertToCelcius(fahrenheit)
        
        let currentTimeIntValue = currentWeather["time"] as Int
        currentTime = dateStringFromUnixTime(currentTimeIntValue) as String
        
        let iconString = currentWeather["icon"] as String
        icon = weatherIconFromString(iconString)
        println(temperature)

        
    }
    func convertToCelcius(fahrenheit: Int)-> Int {
        
        return Int(5.0 / 9.0 * (Double(fahrenheit)-32.0))
    }
    func dateStringFromUnixTime(unixTime: Int)-> String{
        let timeInSeconds = NSTimeInterval(unixTime);
        let weatherDate = NSDate(timeIntervalSince1970: timeInSeconds);
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeStyle = .ShortStyle
        
        
        return dateFormatter.stringFromDate(weatherDate)
    }
    func weatherIconFromString(stringIcon: String)-> UIImage{
        
        var imageName: String
        
        switch stringIcon{
            case "clear-day":
                imageName = "clear-day"
                break
            case "clear-night":
                imageName = "clear-night"
                break
            case "rain":
                imageName = "rain"
                break
            case "snow":
                imageName = "snow"
                break
            case "sleet":
                imageName = "sleet"
                break
            case "wind":
                imageName = "wind"
                break
            case "fog":
                imageName = "fog"
                break
            case "cloudy":
                imageName = "cloudy"
                break
            /*case "partly-cloudy-day":
                imageName = "partly-cloudy-day"
                break
            case "partly-cloudy-night":
                imageName = "partly-cloudy-night"
                break*/
            default:
                imageName = "default";
            
        }
        println(imageName)
        var iconImage = UIImage(named: imageName);
        
        return iconImage!
        
    }

}