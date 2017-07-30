//
//  CreateSkillOtherInteractor.swift
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

protocol CreateSkillOtherBusinessLogic
{
    var skillOtherEditDict:SkillOtherData? { get set }
    func createSkillOther(request: CreateSkillOther.Create.Request)
    func updateSkillOther(request: CreateSkillOther.Update.Request)
    func fetchLevelSkill(requst: CreateSkillOther.MDLevelSkill.Request)
    func showSkillOtherToEdit(request: CreateSkillOther.Edit.Request)
}

protocol CreateSkillOtherDataStore
{
    //var name: String { get set }
    var skillOtherEditDict:SkillOtherData? { get set } 
}

class CreateSkillOtherInteractor: CreateSkillOtherBusinessLogic, CreateSkillOtherDataStore
{
    var presenter: CreateSkillOtherPresentationLogic?
    var worker: CreateSkillOtherWorker?
    var skillOtherEditDict:SkillOtherData?
    
    // MARK: Do something
    
    func createSkillOther(request: CreateSkillOther.Create.Request)
    {
        worker = CreateSkillOtherWorker()
        worker?.createSkillOther(request: request, completion: { (list) in
            let response = CreateSkillOther.Create.Response(SkillOtherList: list)
            self.presenter?.presentCreateSkillOther(response: response)
        })
    }
    
    func updateSkillOther(request: CreateSkillOther.Update.Request)
    {
        worker = CreateSkillOtherWorker()
        worker?.updateSkillOther(request: request, completion: { (list) in
            let response = CreateSkillOther.Update.Response(SkillOtherList: list)
            self.presenter?.presentUpdateSkillOther(response: response)
        })
    }
    
    func showSkillOtherToEdit(request: CreateSkillOther.Edit.Request){
        if let dict = skillOtherEditDict {
            let response = CreateSkillOther.Edit.Response(SkillOtherList: dict)
            self.presenter?.presentSkillOtherToEdit(response: response)
        }
    }
    
    func fetchLevelSkill(requst: CreateSkillOther.MDLevelSkill.Request){
        worker = CreateSkillOtherWorker()
        worker?.fetchLevelSkill(completion: { (list) in
            let response = CreateSkillOther.MDLevelSkill.Response(LevelSkillList: list)
            self.presenter?.presentLevelSkill(response: response)
        })
    }
    
}