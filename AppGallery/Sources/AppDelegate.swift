//
//  AppDelegate.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let tabBarController = UITabBarController()

        tabBarController.tabBar.isTranslucent = false
        tabBarController.tabBar.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.9)

        let mediaLibraryViewController = MediaViewController()

        mediaLibraryViewController.tabBarItem = UITabBarItem(title: TabBarTitle.mediaLibrary, image: IconImageForTabBar.mediaLibrary, tag: 0)

        let forYouViewController = ForYouViewController()
        let forYouNavigationController = UINavigationController(rootViewController: forYouViewController)

        forYouNavigationController.tabBarItem = UITabBarItem(title: TabBarTitle.forYou, image: IconImageForTabBar.forYou, tag: 1)

        let galleryViewController = GalleryViewController()
        let galleryNavigationController = UINavigationController(rootViewController: galleryViewController)

        galleryNavigationController.tabBarItem = UITabBarItem(title: TabBarTitle.gallery, image: IconImageForTabBar.gallery, tag: 2)
        galleryNavigationController.navigationBar.prefersLargeTitles = true

        let searchViewController = SearchViewController()

        searchViewController.tabBarItem = UITabBarItem(title: TabBarTitle.search, image: IconImageForTabBar.search, tag: 3)

        tabBarController.setViewControllers([
            mediaLibraryViewController,
            forYouNavigationController,
            galleryNavigationController,
            searchViewController
        ], animated: false)

        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true

    }
}
