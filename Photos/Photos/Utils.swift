//
//  Utils.swift
//  Photos
//
//  Created by Gene Yoo on 11/3/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import Foundation

class Utils {
    class func consumerSecret() -> String {
        let path = NSBundle.mainBundle().pathForResource("Info", ofType: "plist")
        let consumerSecret = NSDictionary(contentsOfFile: path!)?.valueForKey("consumer-secret") as! String
        return consumerSecret
    }
    
    class func consumerKey() -> String {
        let path = NSBundle.mainBundle().pathForResource("Info", ofType: "plist")
        let consumerKey = NSDictionary(contentsOfFile: path!)?.valueForKey("consumer-key") as! String
        return consumerKey
    }

    class func getPopularURL() -> NSURL {
        let key = consumerKey()
        let urlStr = "https://api.500px.com/v1/photos?feature=popular&consumer_key=\(key)"
        return NSURL(string: urlStr)!
    }
    
}