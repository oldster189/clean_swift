//
//  AlamofireRouter.swift
//  miniTopgun
//
//  Created by itthipon wiwatthanasathit on 7/24/2560 BE.
//  Copyright © 2560 Izpal. All rights reserved.
//

import Foundation
import Alamofire

enum AlamofireRouter: URLRequestConvertible {
    case fetchSkillOther(idJsk: String, idResume: String)
    case createSkillOther(idJsk: String, idResume: String, parameter: SkillOtherData)
    case updateSkillOther(idJsk: String, idResume: String, idSkill: String, parameter: SkillOtherData)
    case fetchLevelSkill()
}
