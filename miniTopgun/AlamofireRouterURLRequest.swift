//
//  AlamofireRouterURLRequest.swift
//  miniTopgun
//
//  Created by itthipon wiwatthanasathit on 7/24/2560 BE.
//  Copyright © 2560 Izpal. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter {
    
    public func asURLRequest() throws -> URLRequest {
        let baseURLString = "http://apps2.jobtopgun.com"
        let url = URL(string: baseURLString + path)!
        var mutableURLRequest = URLRequest(url: url)
        mutableURLRequest.httpMethod = method.rawValue
        
        return try Alamofire.JSONEncoding.default.encode(mutableURLRequest, with: parameters)
    }
}
