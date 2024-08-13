//
//  HomeViewController.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 13/08/24.
//

import UIKit

class HomeViewController: UIViewController {
	private lazy var homeView = HomeUIView()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setup()
		loadConstraint()
    }
}

private extension HomeViewController {
	func setup() {
		self.view.backgroundColor = .systemBackground
		self.view.addSubview(homeView)
	}
	
	func loadConstraint() {
		NSLayoutConstraint.activate([
			homeView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
			homeView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
			homeView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
			homeView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
		])
	}
}
