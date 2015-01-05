//
//  TwitterClient.swift
//  Twitter
//
//  Created by Rive Vermeulen on 28/12/14.
//  Copyright (c) 2014 kdg. All rights reserved.
//

import UIKit

let twitterConsumerKey = "PZCLtAmMend0jpTMkUmfbORyu"
let twitterConsumerSecret = "LgE4cUXAYCdjTgnfa7UcYT6HEySwfIErJDWLf8ZtbdVuzVa4if"
let twitterBaseUrl = NSURL(string: "https://api.twitter.com")

class TwitterClient: BDBOAuth1RequestOperationManager {
    //create a singlton
    class var sharedInstance: TwitterClient {
        struct Static {
    
            static let instance = TwitterClient(baseURL: twitterBaseUrl, consumerKey:twitterConsumerKey, consumerSecret: twitterConsumerSecret)
            
        }
        return Static.instance
    }
    
}
