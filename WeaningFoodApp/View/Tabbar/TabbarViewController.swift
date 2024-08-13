//
//  TabbarViewController.swift
//  WeaningFoodApp
//
//  Created by Gusti Rizky Fajar on 13/08/24.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
		setup()
    }
}

private extension TabbarViewController {
	func setup() {
		let home = createNav(title: "Home", imageName: "house", selectedImageName: "house.fill", viewController: HomeViewController())
		let tracker = createNav(title: "Tracker", imageName: "list.clipboard", selectedImageName: "list.clipboard.fill", viewController: TrackerViewController())
		let profile = createNav(title: "Profile", imageName: "person", selectedImageName: "person.fill", viewController: ProfileViewController())
		
		self.setViewControllers([home, tracker, profile], animated: true)
	}
	
	func createNav(title: String, imageName: String, selectedImageName: String, viewController: UIViewController) -> UINavigationController {
		let nav = UINavigationController(rootViewController: viewController)
		
		nav.tabBarItem.title = title
		nav.tabBarItem = UITabBarItem(title: title, image: UIImage(systemName: imageName), selectedImage: UIImage(systemName: selectedImageName))
		nav.viewControllers.first?.navigationItem.title = title
		nav.viewControllers.first?.navigationController?.navigationBar.prefersLargeTitles = true
		
		return nav
	}
}
