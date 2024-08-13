//
//  MainViewController.swift
//  WeaningFoodApp
//
//  Created by Hans Arthur Cupiterson on 12/08/24.
//

import UIKit

class MainViewController: UIViewController {
    // this class should only filled with components
    private lazy var viewContainer = MainUIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
        loadConstraint()
    }


}

// setup and view display function should be filled in this extension
private extension MainViewController {
    func setup(){
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(viewContainer)
    }
    
    func loadConstraint(){
        NSLayoutConstraint.activate([
            viewContainer.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            viewContainer.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }
}

