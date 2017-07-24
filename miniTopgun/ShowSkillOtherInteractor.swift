//
//  ShowSkillOtherInteractor.swift
//  miniTopgun
//
//  Created by itthipon wiwatthanasathit on 7/24/2560 BE.
//  Copyright (c) 2560 Izpal. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ShowSkillOtherBusinessLogic
{
    func getSkillOtherData(request: ShowSkillOther.GetSkillOther.Request)
}

protocol ShowSkillOtherDataStore
{
    //var name: String { get set }
    var skillOtherData: SkillOtherData! { get set }
}

class ShowSkillOtherInteractor: ShowSkillOtherBusinessLogic, ShowSkillOtherDataStore
{

    var presenter: ShowSkillOtherPresentationLogic?
    var worker: ShowSkillOtherWorker?
    
    var skillOtherData: SkillOtherData!
    
    // MARK: Do something
    
    func getSkillOtherData(request: ShowSkillOther.GetSkillOther.Request)
    {
        let response = ShowSkillOther.GetSkillOther.Response(skillOtherData: skillOtherData)
        presenter?.presentSkillOther(response: response)
    }
}
