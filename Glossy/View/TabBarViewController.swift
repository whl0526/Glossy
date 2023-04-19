//
//  TabBarViewController.swift
//  Glossy
//
//  Created by Hyesung Jeon on 2023/04/19.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var defaultIndex = 0 {
        didSet {
            self.selectedIndex = defaultIndex
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBar: UITabBar = self.tabBar
        tabBar.tintColor = UIColor.orange
        tabBar.unselectedItemTintColor = UIColor.lightGray
        tabBar.isHidden = false
        
        self.hidesBottomBarWhenPushed = false
        self.view.backgroundColor = .white
        self.selectedIndex = defaultIndex

    }
}

extension TabBarViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let firstNavigationController = UINavigationController()
        let FeedViewController = FeedViewController()
        firstNavigationController.addChild(FeedViewController)
        ///기본으로 보여질 이미지
        firstNavigationController.tabBarItem.image = UIImage(systemName: "list.bullet.circle")
        ///선택되었을 때 보여질 이미지
        firstNavigationController.tabBarItem.selectedImage = UIImage(systemName: "list.bullet.circle")
        ///탭바 아이템 타이틀
        firstNavigationController.tabBarItem.title = "피드"
        
        let secondNavigationController = UINavigationController()
        let SearchViewController = SearchViewController()
        secondNavigationController.addChild(SearchViewController)
        ///기본으로 보여질 이미지
        secondNavigationController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        ///선택되었을 때 보여질 이미지
        secondNavigationController.tabBarItem.selectedImage = UIImage(systemName: "magnifyingglass")
        ///탭바 아이템 타이틀
        secondNavigationController.tabBarItem.title = "검색"
        
        
        let thirdNavigationController = UINavigationController()
        let CreatePostViewController = CreatePostViewController()
        
        thirdNavigationController.addChild(CreatePostViewController)
        ///기본으로 보여질 이미지
        thirdNavigationController.tabBarItem.image = UIImage(systemName: "plus.square")
        ///선택되었을 때 보여질 이미지
        thirdNavigationController.tabBarItem.selectedImage = UIImage(systemName: "plus.square")
        ///탭바 아이템 타이틀
        thirdNavigationController.tabBarItem.title = "글작성"
        
        let fourthNavigationController = UINavigationController()
        let MyPageViewController = MyPageViewController()
        
        fourthNavigationController.addChild(MyPageViewController)
        ///기본으로 보여질 이미지
        fourthNavigationController.tabBarItem.image = UIImage(systemName: "person")
        ///선택되었을 때 보여질 이미지
        fourthNavigationController.tabBarItem.selectedImage = UIImage(systemName: "person")
        ///탭바 아이템 타이틀
        fourthNavigationController.tabBarItem.title = "마이페이지"
     
        
        let viewControllers = [firstNavigationController, secondNavigationController, thirdNavigationController, fourthNavigationController]
        self.setViewControllers(viewControllers, animated: true)
        
    }
}
