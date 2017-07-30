//
//  AlamofireRouterPath.swift
//  miniTopgun
//
//  Created by itthipon wiwatthanasathit on 7/24/2560 BE.
//  Copyright © 2560 Izpal. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter {
    var path: String {
        switch self {
        case .fetchSkillOther(let idJsk, let idResume):
            return "/api/sr.php/SkillOther/\(idJsk)/\(idResume)"
        case .createSkillOther(let idJsk, let idResume, _):
            return "/api/sr.php/SkillOther/\(idJsk)/\(idResume)"
        case .updateSkillOther(let idJsk, let idResume, let idSkill, _):
            return "/api/sr.php/SkillOther/\(idJsk)/\(idResume)/\(idSkill)"
        case .fetchLevelSkill:
            return "/api/md.php/SkillLevel/11"
        }
        
    }
}
