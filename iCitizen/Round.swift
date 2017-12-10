//
//  Round.swift
//  iCitizen
//
//  Created by Marcus Williams on 12/10/17.
//  Copyright © 2017 Marcus Williams. All rights reserved.
//

import UIKit

class Round: UIButton {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func awakeFromNib() {
        super.awakeFromNib()
        self.clipsToBounds = true
        self.cornerRadius  = 50.0
    }
    

}
