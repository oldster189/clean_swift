//
//  AlamofireRounterParameter.swift
//  miniTopgun
//
//  Created by itthipon wiwatthanasathit on 7/24/2560 BE.
//  Copyright © 2560 Izpal. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter {
    
    public var parameters: [String: Any]? {
        switch self {
        case .fetchSkillOther :
            return nil
        case .createSkillOther(_, _, let parameter):
            return parameter.dictionaryRepresentation()
        case .updateSkillOther(_, _, _, let parameter):
            return parameter.dictionaryRepresentation()
        case .fetchLevelSkill:
            return nil
        }
    }
}
