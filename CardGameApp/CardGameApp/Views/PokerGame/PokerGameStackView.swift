//
//  PokerGameStackView.swift
//  CardGameApp
//
//  Created by Cory Kim on 2020/02/12.
//  Copyright © 2020 corykim0829. All rights reserved.
//

import UIKit

class PokerGameStackView: UIStackView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        axis = .vertical
        spacing = 16
        translatesAutoresizingMaskIntoConstraints = false
        alignment = .top
    }
}
