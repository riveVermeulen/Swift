//
//  ViewController.swift
//  Twitter
//
//  Created by Rive Vermeulen on 28/12/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(sender: AnyObject) {
        TwitterClient.sharedInstance.requestSerializer.removeAccessToken()
        //deze request token geeft mij toestemming om de usser toegang te geven aan deze twitter authantication page met deze token kan ik een authantication url bouwen
        //callbackURL we zeggen tegen twitter na de login kom terug naar "cptwitterdemo://oauth"
        TwitterClient.sharedInstance.fetchRequestTokenWithPath("oauth/request_token", method: "GET",
            callbackURL: NSURL(string: "cptwitterdemo://oauth"), scope: nil, success: { (requestToken: BDBOAuthToken!) -> Void in
            println("Request token succes \(requestToken)")
            //url voor de twitter authantication URL
            var authURL = NSURL(string: "https://api.twitter.com/oauth/authorize?oauth_token=\(requestToken.token)")
            //Opent safari en de url maar kunnen ook MAPS of facebook openen ofz
            UIApplication.sharedApplication().openURL(authURL!)
            
            }) { (error: NSError!) -> Void in
            println("Something did go wrong FAIL !! ")
                
                
        }
    }

}

