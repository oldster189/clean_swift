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
        case .getSkillOther(let idJsk, let idResume):
            return "/api/sr.php/SkillOther/\(idJsk)/\(idResume)"
        case .createSkillOther(let idJsk, let idResume):
            return "/api/sr.php/SkillOther/\(idJsk)/\(idResume)"
        }
    }
}
