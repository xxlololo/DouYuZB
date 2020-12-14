//
//  MainTabBarController.swift
//  DYZB
//
//  Created by xIang on 2020/12/11.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewControllers()
        tabBar.tintColor = UIColor.orange
    }
    
    private func addChildViewControllers() {
        let homeVC = HomeViewController()
        addOnChildVC(vc: homeVC, image: "btn_home_normal", selectImage: "btn_home_selected", title: "首页")
        let liveVC = LiveViewController()
        addOnChildVC(vc: liveVC, image: "btn_column_normal", selectImage: "btn_column_selected", title: "直播")
        let followVC = FollowViewController()
        addOnChildVC(vc: followVC, image: "btn_live_normal", selectImage: "btn_live_selected", title: "关注")
        let profileVC = ProfileViewController()
        addOnChildVC(vc: profileVC, image: "btn_user_normal", selectImage: "btn_user_selected", title: "我的")
    }
    
    private func addOnChildVC(vc: UIViewController, image: String, selectImage: String, title: String) {
        let navC = MainNavigationController()
        navC.addChild(vc)
        vc.tabBarItem.title = title
        vc.tabBarItem.image = UIImage.imageWithOriginalName(imageName: image)
        vc.tabBarItem.selectedImage = UIImage.imageWithOriginalName(imageName: selectImage)
        addChild(navC)
    }
}
