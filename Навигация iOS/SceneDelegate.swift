//
//  SceneDelegate.swift
//  Навигация iOS
//
//  Created by Антон Исаков on 19.06.2023.
//

import UIKit

//class SceneDelegate: UIResponder, UIWindowSceneDelegate {
//
//    var window: UIWindow?
//
//    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//        guard let windowScene = (scene as? UIWindowScene) else { return }
//        window = UIWindow(windowScene: windowScene)
//        let viewController = ViewController()
//        window?.rootViewController = viewController
//        window?.makeKeyAndVisible()
//    }
//
//    func changeViewConroller(viewController: UIViewController, animated: Bool = true, animationOptions: UIView.AnimationOptions){
//        guard let window = window else { return }
//        window.rootViewController = viewController
//        let options: UIView.AnimationOptions = [animationOptions]
//
//        UIView.transition(with: window, duration: 0.5, options: options, animations: nil, completion: nil)
//    }
//
//    (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeViewConroller(viewController: SecondViewController(), animationOptions: true, animationOptions: .transitionFlipFromBottom)
//
//}


class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let tabBarController = UITabBarController()
        setupTabBarController(controller: tabBarController)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
    
    func setupTabBarController(controller: UITabBarController) {
        let first = FirstTabBarViewController ()
        let firstIcon = UITabBarItem(title: "First", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        first.tabBarItem = firstIcon
        let firstNavigationViewController = UINavigationController(rootViewController: first)
        
        let second = SecondTabBarViewController()
        let secondItem = UITabBarItem(title: "Second", image: UIImage(systemName: "iphone.homebutton.radiowaves. left.and.right.circle"), selectedImage: UIImage(systemName: "iphone.homebutton. radiowaves.left.and.right.circle.fill"))
        second.tabBarItem = secondItem
        let secondNavigationController = UINavigationController(rootViewController: second)
        
        let third = ThirdTabBarViewController()
        let thirdItem = UITabBarItem(title: "Third", image: UIImage(systemName: "homepodmini.2"), selectedImage: UIImage(systemName: "homepodmini.2.fill"))
        third.tabBarItem = thirdItem
        let thirdNavigationController = UINavigationController(rootViewController: third)
        
        let fourth = FourthTabBarViewController()
        let fourthItem = UITabBarItem(title: "Fourth", image: UIImage(systemName: "camera.macro.circle"), selectedImage: UIImage(systemName: "camera.macro.circle"))
        fourth.tabBarItem = fourthItem
        let fourthNavigationController = UINavigationController(rootViewController: fourth)
        
        let controllers = [firstNavigationViewController, secondNavigationController, thirdNavigationController, fourthNavigationController]
        
        controller.tabBar.backgroundColor = .white
        controller.tabBar.tintColor = .black
        controller.setViewControllers(controllers, animated: true)
        
    }
}
