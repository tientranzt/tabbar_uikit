//
//  LableGeneral.swift
//  learn_uikit
//
//  Created by tientran on 01/01/2021.
//

import SwiftUI

class LabelGeneral: UILabel {
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        numberOfLines = 0
        sizeToFit()
        textColor = .black
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
