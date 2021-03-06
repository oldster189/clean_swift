//
//  ShowSkillOtherPresenter.swift
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

protocol ShowSkillOtherPresentationLogic
{
  func presentSkillOther(response: ShowSkillOther.GetSkillOther.Response)
}

class ShowSkillOtherPresenter: ShowSkillOtherPresentationLogic
{
  weak var viewController: ShowSkillOtherDisplayLogic?
  
  // MARK: Do something
  
  func presentSkillOther(response: ShowSkillOther.GetSkillOther.Response)
  {
    let viewModel = ShowSkillOther.GetSkillOther.ViewModel(skillOtherData: response.skillOtherData)
    viewController?.displaySkillOther(viewModel: viewModel)
  }
}
