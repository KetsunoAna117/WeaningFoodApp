//
//  CollectionsViewController.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 14/08/24.
//

import UIKit
import SwiftUI

class CollectionsViewController: UIViewController {
	private lazy var collectionsSwiftUI = CollectionsSwiftUIView()
	private lazy var collectionsHostingController = UIHostingController(rootView: collectionsSwiftUI)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setup()
		loadConstraint()
	}
}

private extension CollectionsViewController {
	func setup() {
		self.view.backgroundColor = .systemBackground
		self.view.addSubview(collectionsHostingController.view)
		
		collectionsHostingController.view.translatesAutoresizingMaskIntoConstraints = false
		collectionsHostingController.didMove(toParent: self)
		
		addChild(collectionsHostingController)
	}
	
	func loadConstraint() {
		NSLayoutConstraint.activate([
			collectionsHostingController.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
			collectionsHostingController.view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
			collectionsHostingController.view.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
			collectionsHostingController.view.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
		])
	}
}
