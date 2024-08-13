//
//  TrackerUIView.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 13/08/24.
//

import UIKit

class TrackerUIView: UIView {
	
	override init(frame: CGRect) {
		super .init(frame: frame)
		setup()
		loadConstraint()
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

private extension TrackerUIView {
	func setup() {
		self.translatesAutoresizingMaskIntoConstraints = false
	}
	
	func loadConstraint() {
		// TODO: add constraint
	}
}
