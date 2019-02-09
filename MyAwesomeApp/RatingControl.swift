//
//  RatingControl.swift
//  MyAwesomeApp
//
//  Created by Divine Dube on 2019/02/08.
//  Copyright © 2019 Divine Dube. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //MARK: Initilization
   open var rating: Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        let button = UIButton()
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
        addArrangedSubview(button)
        
    }
    
    @objc func ratingButtonTapped(button: UIButton) {
        print("rating button trapped")
    }
}
