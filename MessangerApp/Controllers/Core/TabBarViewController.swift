//
//  TabBarViewController.swift
//  MessangerApp
//
//  Created by Stefan Dojcinovic on 9.8.22..
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Instantiate view controllers
        let vc1 = ConversationsViewController()
        let vc2 = ProfileViewController()
        
        // Set titles for view controllers
        vc1.title = "Conversations"
        vc2.title = "Profile"
        
        // Set up control for large titles display
        vc1.navigationItem.largeTitleDisplayMode = .always
        vc2.navigationItem.largeTitleDisplayMode = .always
        
        // Initialise navigation controllers
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        
        // Set up tab bar items that will apear in nav bar
        nav1.tabBarItem = UITabBarItem(
            title: "Conversations",
            image: UIImage(systemName: "rectangle.and.pencile.and.elipsis"),
            tag: 1
        )
        nav1.tabBarItem = UITabBarItem(
            title: "Profile",
            image: UIImage(systemName: "person.circle"),
            tag: 2
        )
        
        // Set up for the nav bar to only use large titles for navigation items
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        
        // Set up view controllers to be shown in tab bar, if there is more than four view controllers
        // to be shown it will only show the first four and the rest will be accessible under a
        // automaticaly generated "More" item.
        setViewControllers([nav1, nav2], animated: false)
    }
}
