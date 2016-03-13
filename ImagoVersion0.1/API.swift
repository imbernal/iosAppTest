//
//  API.swift
//  ImagoVersion0.1
//
//  Created by Israel Michel Bernal Martinez on 3/13/16.
//  Copyright © 2016 Israel Michel Bernal Martinez. All rights reserved.
//

import UIKit

class API{
    
    class func get(responseBlok:(NSError?) ->Void) {
        
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: "http://localhost:8000/api/images/")!
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "GET"
        
        
        print(request)
        
    }
    
}
