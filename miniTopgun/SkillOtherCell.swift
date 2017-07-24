//
//  SkillOtherViewCell.swift
//  miniTopgun
//
//  Created by itthipon wiwatthanasathit on 7/24/2560 BE.
//  Copyright © 2560 Izpal. All rights reserved.
//

import UIKit

class SkillOtherCell: UITableViewCell, ResueIdentifierProtocol{

    @IBOutlet weak var mNameSkill:UILabel!
    @IBOutlet weak var mLevelSKill:UILabel!
    
    static let identifier = "SkillOtherCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(with viewModel: SkillOtherData) {
        mNameSkill.text = viewModel.sKILLNAME
        mLevelSKill.text = viewModel.sKILLLEVELEN
    }

}
