//
//  HomeViewController.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 13/08/24.
//

import UIKit
import SwiftUI

class RecipesViewController: UIViewController {
	private lazy var recipesSwiftUI = RecipesSwiftUIView()
	private lazy var recipesHostingController = UIHostingController(rootView: recipesSwiftUI)
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setup()
		loadConstraint()
    }
}

private extension RecipesViewController {
	func setup() {
		self.view.backgroundColor = .systemBackground
		self.view.addSubview(recipesHostingController.view)
		
		recipesHostingController.view.translatesAutoresizingMaskIntoConstraints = false
		recipesHostingController.didMove(toParent: self)
		
		addChild(recipesHostingController)
        navigationController?.setNavigationBarHidden(true, animated: false)
	}
	
	func loadConstraint() {
		NSLayoutConstraint.activate([
			recipesHostingController.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
			recipesHostingController.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
			recipesHostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
			recipesHostingController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
		])
	}
}
