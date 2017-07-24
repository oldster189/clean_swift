//
//  SkillOtherWorker.swift
//  miniTopgun
//
//  Created by Codemobiles on 7/24/2560 BE.
//  Copyright (c) 2560 Izpal. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import Alamofire

class SkillOtherWorker
{
    func fetchAllSKillOther(idJsk:String, idResume:String, completion:@escaping([SkillOtherData]?) ->Void)
    {
        let rounter = AlamofireRouter.getSkillOther(idJsk: idJsk, idResume: idResume)
        Alamofire.request(rounter).responseJSON { (response) in
            switch response.result {
            case .success(let value):
                let re = SkillOtherBase(object: value)
                if re.success == 1{
                    if let list = re.data {
                        completion(list)
                    }
                }
            case .failure(let error):
                print(error)
                completion(nil)
            }
        }
    }
}
