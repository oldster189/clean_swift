//
//  ShowSkillOtherViewController.swift
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

protocol ShowSkillOtherDisplayLogic: class
{
    func displaySkillOther(viewModel: ShowSkillOther.GetSkillOther.ViewModel)
}

class ShowSkillOtherViewController: UIViewController, ShowSkillOtherDisplayLogic
{
    var interactor: ShowSkillOtherBusinessLogic?
    var router: (NSObjectProtocol & ShowSkillOtherRoutingLogic & ShowSkillOtherDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    private func setup()
    {
        let viewController = self
        let interactor = ShowSkillOtherInteractor()
        let presenter = ShowSkillOtherPresenter()
        let router = ShowSkillOtherRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        getSkillOther()
    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func getSkillOther()
    {
        let request = ShowSkillOther.GetSkillOther.Request()
        interactor?.getSkillOtherData(request: request)
    }
    
    func displaySkillOther(viewModel: ShowSkillOther.GetSkillOther.ViewModel)
    {
        mNameSkill.text = viewModel.skillOtherData.sKILLNAME
        mLevelSkill.text = viewModel.skillOtherData.sKILLLEVELEN
    }
    
    
    
    @IBOutlet weak var mNameSkill: UILabel!
    @IBOutlet weak var mLevelSkill: UILabel!
    
}
