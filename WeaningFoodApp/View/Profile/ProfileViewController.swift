//
//  ProfileViewController.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 13/08/24.
//

import UIKit

class ProfileViewController: UIViewController {
	private lazy var profileView = ProfileUIView()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setup()
		loadConstraint()
    }
}

private extension ProfileViewController {
	func setup() {
		self.view.backgroundColor = .systemBackground
		self.view.addSubview(profileView)
	}
	
	func loadConstraint() {
		NSLayoutConstraint.activate([
			profileView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
			profileView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
			profileView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
			profileView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
		])
	}
}
