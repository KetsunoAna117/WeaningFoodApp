//
//  MainUIView.swift
//  WeaningFoodApp
//
//  Created by Hans Arthur Cupiterson on 12/08/24.
//

import UIKit

class MainUIView: UIView {
    // this class should only filled with components
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Hello World!"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        loadConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// setup and view display function should be filled in this extension
private extension MainUIView {
    func setup(){
        self.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(label)
    }
    
    func loadConstraint(){
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
