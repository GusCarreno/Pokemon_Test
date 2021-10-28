//
//  SceneDelegate.swift
//  Pokemon_Test
//
//  Created by Gustavo Carreno on 26/10/21.
//

import UIKit
import SwiftUI

final class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = scene as? UIWindowScene else { return }
        
        window = UIWindow(windowScene: scene)
        window?.rootViewController = TabBarController()
        window?.makeKeyAndVisible()
        /*guard let scene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: scene)
        window.rootViewController = UIHostingController(rootView: LoginView())
        self.window = window
        window.makeKeyAndVisible()*/
    }
}
