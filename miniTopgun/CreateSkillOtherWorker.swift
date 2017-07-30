//
//  CreateSkillOtherWorker.swift
//  miniTopgun
//
//  Created by itthipon wiwatthanasathit on 7/30/2560 BE.
//  Copyright (c) 2560 Izpal. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import Alamofire

class CreateSkillOtherWorker
{
    func createSkillOther(request: CreateSkillOther.Create.Request, completion:@escaping ([SkillOtherData]?) ->Void)
    {
        let request = request.bodyRequest
        let parameters:SkillOtherData = SkillOtherData(object: "")
        parameters.sKILLNAME = request.nameSkill
        parameters.lEVELSKILL = request.levelSkill
        let router = AlamofireRouter.createSkillOther(idJsk: request.idJsk, idResume: request.idResume, parameter: parameters)
        Alamofire.request(router).responseJSON { (response) in
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
    
    func updateSkillOther(request: CreateSkillOther.Update.Request, completion:@escaping ([SkillOtherData]?) ->Void)
    {
        let request = request.bodyRequest
        let parameters:SkillOtherData = SkillOtherData(object: "")
        parameters.sKILLNAME = request.nameSkill
        parameters.lEVELSKILL = request.levelSkill
        let router = AlamofireRouter.updateSkillOther(idJsk: request.idJsk, idResume: request.idResume, idSkill: request.idSkill, parameter: parameters)
        Alamofire.request(router).responseJSON { (response) in
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
    
    func fetchLevelSkill(completion:@escaping ([LevelSkillData]?) ->Void){
        let defaults = UserDefaults.standard
        if let data = defaults.data(forKey: KEY_CREATE_SKILL_OTHER),
            let list = NSKeyedUnarchiver.unarchiveObject(with: data) as? [LevelSkillData] {
            completion(list)
        }else{
            let rounter = AlamofireRouter.fetchLevelSkill()
            Alamofire.request(rounter).responseJSON { (response) in
                switch response.result {
                case .success(let value):
                    let re = LevelSkillBase(object: value)
                    if re.success == 1{
                        if let list = re.data {
                            let encodedData = NSKeyedArchiver.archivedData(withRootObject: list)
                            defaults.set(encodedData, forKey: KEY_CREATE_SKILL_OTHER)
                            defaults.synchronize()
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
}
