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
		let recipes = createNav(title: "Explore", imageName: "magnifyingglass.circle", selectedImageName: "magnifyingglass.circle.fill", viewController: RecipesViewController())
		let collections = createNav(title: "Collections", imageName: "heart.circle", selectedImageName: "heart.circle.fill", viewController: CollectionsViewController())
		let logs = createNav(title: "Log", imageName: "pencil.circle", selectedImageName: "pencil.circle.fill", viewController: LogsViewController())
		let profile = createNav(title: "Profile", imageName: "person.circle", selectedImageName: "person.circle.fill", viewController: ProfileViewController())
		
		self.setViewControllers([recipes, collections, logs, profile], animated: true)
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
