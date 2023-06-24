//
//  SceneDelegate.swift
//  Навигация iOS
//
//  Created by Антон Исаков on 19.06.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let viewController = ViewController()
        let navigarionController = UINavigationController(rootViewController: viewController)
        window?.rootViewController = navigarionController
        window?.makeKeyAndVisible()
    }
    
}
