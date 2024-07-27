//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Ankush Shandil on 25/07/24.
//

import UIKit

// MARK: CONTROLLER TO HOUSE TABS AND ROOT TAB CONTROLLERS
final class RMTabViewController: UITabBarController {

    // MARK: VIEW LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpTabs()
    }


    // MARK: FUNCTIONS
    private func setUpTabs()  {
         let charactersVC = RMCharacterVC()
         let locationsVC = RMLocationVC()
         let episodesVC = RMEpisodeVC()
         let settingsVC = RMSettingsVC()
    
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        
        
//        charactersVC.title = "Characters"
//        locationsVC.title = "Locations"
//        episodesVC.title = "Episodes"
//        settingsVC.title = "Settings"
        
        
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        

        nav1.tabBarItem = UITabBarItem(title: "", image: nil, tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "", image: nil, tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "", image: nil, tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "", image: nil, tag: 4)
        
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 1)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 1)

        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
            
        }
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
        
        
    }
}

