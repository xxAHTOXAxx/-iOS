//
//  TabBarController.swift
//  Навигация iOS
//
//  Created by Антон Исаков on 19.06.2023.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        setupTabBarController()
        setupTabBarViewControllers()
        }
    
    func setupTabBarController() {
        tabBar.tintColor = .black
        tabBar.backgroundColor = .white
        
       
    }
    
    func setupTabBarViewControllers() {
        let first = FirstTabBarViewController()
        let firstIcon = UITabBarItem(title: "First", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        first.tabBarItem = firstIcon
        
        let second = SecondTabBarViewController()
        let secondItem = UITabBarItem(title: "Second", image: UIImage(systemName: "iphone.homebutton.radiowaves. left.and.right.circle"), selectedImage: UIImage(systemName: "iphone.homebutton. radiowaves.left.and.right.circle.fill"))
        second.tabBarItem = secondItem
        
        let third = ThirdTabBarViewController()
        let thirdIcon = UITabBarItem(title: "Third", image: UIImage(systemName: "homepodmini.2"), selectedImage: UIImage(systemName: "homepodmini.2.fill"))
        third.tabBarItem = thirdIcon
        
        
        let fourth = FourthTabBarViewController()
        let fourthIcon = UITabBarItem(title: "Fourth", image: UIImage(systemName: "camera.macro.circle"), selectedImage: UIImage(systemName: "camera.macro.circle"))
        fourth.tabBarItem = fourthIcon
        
        func tabBarController(_tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
            print("Будет выбран контроллер -\(viewController.title ?? "")")
            return true
            
            let controllers = [first, second, third, fourth]
            self.setViewControllers(controllers, animated: true)
        }
        
    }
}

