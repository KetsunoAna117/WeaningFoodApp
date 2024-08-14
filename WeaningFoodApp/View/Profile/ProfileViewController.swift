//
//  ProfileViewController.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 13/08/24.
//

import UIKit
import SwiftUI

class ProfileViewController: UIViewController {
	private lazy var profileSwiftUI = ProfileSwiftUIView()
	private lazy var profileHostingController = UIHostingController(rootView: profileSwiftUI)
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setup()
		loadConstraint()
    }
}

private extension ProfileViewController {
	func setup() {
		self.view.backgroundColor = .systemBackground
		self.view.addSubview(profileHostingController.view)
		
		profileHostingController.view.translatesAutoresizingMaskIntoConstraints = false
		profileHostingController.didMove(toParent: self)
		
		addChild(profileHostingController)
	}
	
	func loadConstraint() {
		NSLayoutConstraint.activate([
			profileHostingController.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
			profileHostingController.view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
			profileHostingController.view.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
			profileHostingController.view.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
		])
	}
}
