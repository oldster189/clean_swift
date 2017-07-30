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
    var skillOtherDataEdit: SkillOtherData! { get set }
    var isUpdate: Bool! { get set }
}

class ShowSkillOtherInteractor: ShowSkillOtherBusinessLogic, ShowSkillOtherDataStore
{

    var presenter: ShowSkillOtherPresentationLogic?
    var worker: ShowSkillOtherWorker?
    
    var skillOtherDataEdit: SkillOtherData!
    var isUpdate: Bool!
    // MARK: Do something
    
    func getSkillOtherData(request: ShowSkillOther.GetSkillOther.Request)
    {
        let response = ShowSkillOther.GetSkillOther.Response(skillOtherData: skillOtherDataEdit)
        presenter?.presentSkillOther(response: response)
    }
}
