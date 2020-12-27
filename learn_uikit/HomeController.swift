//
//  ViewController.swift
//  learn_uikit
//
//  Created by tientran on 26/12/2020.
//

import UIKit


class ItemViewController: UIViewController {
    
    private let centerButton : UIButton = {
        let button = UIButton()
        button.setTitle("Press me", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setDimension(width: 80, height: 30)
        button.backgroundColor = .white
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(handleCenterButtonPress), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(centerButton)
        centerButton.centerXAnchor(inView: view)
        centerButton.centerYAnchor(inView: view)
    }
    @objc func handleCenterButtonPress()  {
        print("viewController title : \(String(describing: title))")
    }
    
}

class HomeController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let item1 = ItemViewController()
        item1.view.backgroundColor = .red
        item1.title = "Home"
        
        let icon1 = UITabBarItem(title: "Home", image: nil, tag: 0)
        item1.tabBarItem = icon1
        
        let item2 = ItemViewController()
        item2.view.backgroundColor = .yellow
        item2.title = "Settings"
        let icon2 = UITabBarItem(title: "Setting", image: nil, tag: 1)
        item2.tabBarItem = icon2
        let controller = [item1, item2]
        
        self.viewControllers = controller
    }
    
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController \(viewController.title ?? "nil" )")
        
        return true
    }
    
}

