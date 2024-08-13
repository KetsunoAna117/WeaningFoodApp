//
//  TrackerViewController.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 13/08/24.
//

import UIKit

class TrackerViewController: UIViewController {
	private lazy var trackerView = TrackerUIView()
	
    override func viewDidLoad() {
        super.viewDidLoad()
		setup()
		loadConstraint()
    }
}

private extension TrackerViewController {
	func setup() {
		self.view.backgroundColor = .systemBackground
		self.view.addSubview(trackerView)
	}
	
	func loadConstraint() {
		NSLayoutConstraint.activate([
			trackerView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
			trackerView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
			trackerView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
			trackerView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
		])
	}
}
