//
//  MainTabBarViewController.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 30/08/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: ScanViewController())
        let vc3 = UINavigationController(rootViewController: OrderViewController())
        let vc4 = UINavigationController(rootViewController: GiftViewController())
        let vc5 = UINavigationController(rootViewController: StoresViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        vc1.tabBarItem.title = "Home"
        
        vc2.tabBarItem.image = UIImage(systemName: "qrcode")
        vc2.tabBarItem.title = "Scan"
        
        vc3.tabBarItem.image = UIImage(systemName: "arrow.up.bin")
        vc3.tabBarItem.selectedImage = UIImage(systemName: "arrow.up.bin.fill")
        vc3.tabBarItem.title = "Order"
        
        vc4.tabBarItem.image = UIImage(systemName: "gift")
        vc4.tabBarItem.selectedImage = UIImage(systemName: "gift.fill")
        vc4.tabBarItem.title = "Gift"

        vc5.tabBarItem.image = UIImage(systemName: "location")
        vc5.tabBarItem.selectedImage = UIImage(systemName: "location.fill")
        vc5.tabBarItem.title = "Stores"

        setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: true)
        
    }

}
