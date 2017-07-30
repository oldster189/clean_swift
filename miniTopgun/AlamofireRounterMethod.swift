//
//  AlamofireRounterMethod.swift
//  miniTopgun
//
//  Created by itthipon wiwatthanasathit on 7/24/2560 BE.
//  Copyright © 2560 Izpal. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter { 
    var method: Alamofire.HTTPMethod {
        switch self {
        case .fetchSkillOther:
            return .get
        case .createSkillOther:
            return .post
        case .updateSkillOther:
            return .put
        case .fetchLevelSkill:
            return .get
        }
    }
}
