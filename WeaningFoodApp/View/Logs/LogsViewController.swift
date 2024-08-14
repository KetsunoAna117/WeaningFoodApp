//
//  TrackerViewController.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 13/08/24.
//

import UIKit
import SwiftUI

class LogsViewController: UIViewController {
	private lazy var logsSwiftUI = LogsSwiftUIView()
	private lazy var logsHostingController = UIHostingController(rootView: logsSwiftUI)
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setup()
		loadConstraint()
    }
}

private extension LogsViewController {
	func setup() {
		self.view.backgroundColor = .systemBackground
		self.view.addSubview(logsHostingController.view)
		
		logsHostingController.view.translatesAutoresizingMaskIntoConstraints = false
		logsHostingController.didMove(toParent: self)
		
		addChild(logsHostingController)
	}
	
	func loadConstraint() {
		NSLayoutConstraint.activate([
			logsHostingController.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
			logsHostingController.view.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
			logsHostingController.view.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
			logsHostingController.view.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
		])
	}
}
