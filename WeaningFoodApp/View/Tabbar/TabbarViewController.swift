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
		let recipes = createNav(title: "Recipes", imageName: "fork.knife", selectedImageName: "fork.knife", viewController: RecipesViewController())
		let logs = createNav(title: "Logs", imageName: "list.clipboard", selectedImageName: "list.clipboard.fill", viewController: LogsViewController())
		
		self.setViewControllers([recipes, logs], animated: true)
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
