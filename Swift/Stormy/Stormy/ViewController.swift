//
//  ViewController.swift
//  Stormy
//
//  Created by Rive Vermeulen on 30/11/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var precipitationLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    @IBOutlet weak var refreshActivityIndicator: UIActivityIndicatorView!
    private let apiKey = "352a1f0d911159e408223e6aa0daf8d1";
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Data me geolocatie op zoeken.
        
        refreshActivityIndicator.hidden = true
        getCurrentWeatherData()
        
    }

    func getCurrentWeatherData()->Void{
    
        let baseUrl = NSURL(string: "https://api.forecast.io/forecast/\(apiKey)/");
        if let forecastUrl = NSURL(string: "51.173414,4.369627", relativeToURL: baseUrl){
            //NSDATA hebben we nodig voor een API Call
            //NSDATA helpt ons met het managen van data en opslagen van data die we terug krijgen.
            /*
            dataWithContentsOfURL:options:error:
            Creates and returns a data object containing the data from the location specified by aURL.
            */
            
            /*let weatherDATA = NSData(contentsOfURL: forecastUrl!, options: nil, error: nil);
            println(weatherDATA);*/
            //Concurrency
            
            //Singelton object session objct erna de task maken
            let sharedSingeltonSession = NSURLSession.sharedSession();
            /*let downloadTak: NSURLSessionDownloadTask = sharedSession.downloadTaskWithURL(forecastUrl, completionHandler: { (location: NSURL!, response: NSURLResponse!,error: NSError!) -> Void in
            //this is a closure
            println(response);
            
            })*/
            //slaagt voorlopig alles op in location ergens op onze disc
            let downloadTask: NSURLSessionDownloadTask = sharedSingeltonSession.downloadTaskWithURL(forecastUrl, completionHandler: { (location: NSURL!, response: NSURLResponse!, error: NSError!) -> Void in
                //println(response)
                if(error == nil){
                    
                    //println(error);
                    /*var urlContent = NSString(contentsOfURL: location, encoding: NSUTF8StringEncoding, error: nil);
                    println(urlContent);*/
                    let dataObject = NSData(contentsOfURL: location);
                    let weatherDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(dataObject!, options: nil, error: nil) as NSDictionary
                    /*let currentWeatherDictionary: NSDictionary = weatherDictionary["currently"] as NSDictionary
                    println(currentWeatherDictionary)*/
                    let currentWeather = Current(weatherDictionaryData: weatherDictionary);
                    println(currentWeather.icon);
                    //main lane is reserved for updates to the ui
                    //we zitten in de completion handler een van de side lanes dus moeten we de
                    //update uitvoeren op de main lanes
                    //we gebruiken dispatch_async(dispatch_get_main_queue() om terug op de main lane te komen
                    
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        self.temperatureLabel.text = "\(currentWeather.temperature!)°c"
                        self.iconView.image = currentWeather.icon!
                        self.currentTimeLabel.text = "At \(currentWeather.currentTime!) it is"
                        self.humidityLabel.text = "\(currentWeather.humidity)"
                        self.humidityLabel.text = "\(currentWeather.precipProbability)"
                        self.humidityLabel.text = "\(currentWeather.summary)"
                        
                        //stop refresh animation
                        self.refreshActivityIndicator.stopAnimating()
                        self.refreshActivityIndicator.hidden = true
                        self.refreshButton.hidden = false
                        
                        
                    })
                }else{
                     println(error);
                    
                    /*convenience init(title title: String?,
                        message message: String?,
                        preferredStyle preferredStyle: UIAlertControllerStyle)*/
                    let networkIssueController = UIAlertController(title: "Error", message: "Unable to load data. Connectivity error !", preferredStyle: .Alert)
                    let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
                    networkIssueController.addAction(okButton)
                    let cancelButton = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
                    networkIssueController.addAction(cancelButton)
                    
                    
                    self.presentViewController(networkIssueController, animated: true, completion: nil)
                    
                    dispatch_async(dispatch_get_main_queue(), { ()->Void in
                        self.refreshActivityIndicator.stopAnimating()
                        self.refreshActivityIndicator.hidden = true
                        self.refreshButton.hidden = false
                        
                    })
                    
                    
                }
            })
            downloadTask.resume();
        }else {
            println("Optional NSURL is gelijk aan nil");
        }
    }
    @IBAction func refresh() {
        getCurrentWeatherData()
        refreshButton.hidden = true
        refreshActivityIndicator.hidden = false
        refreshActivityIndicator.startAnimating()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

