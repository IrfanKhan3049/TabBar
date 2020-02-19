//
//  ViewController.swift
//  TabbarIrfan
//
//  Created by apple on 2/18/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITabBarDelegate {
      var fvc = UIViewController()

    @IBOutlet weak var tabBar: UITabBar!
    
    @IBOutlet weak var containerView: UIView!
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        
        switch item.tag {
        case 0:
            fvc.remove()
            let vc = storyboard?.instantiateViewController(withIdentifier: "FavoriteViewController") as! FavoriteViewController
            fvc = vc
            self.add(vc, frame: self.containerView.frame)
            break
            
        case 1:
            fvc.remove()
            let vc = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
            fvc = vc
            self.add(vc, frame: self.containerView.frame)
            break
        case 2:
            fvc.remove()
            let vc = storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
            fvc = vc
            self.add(vc, frame: self.containerView.frame)
            break
        default:
            break
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBar.delegate = self
    }


}
extension UIViewController {
    func add(_ child: UIViewController, frame: CGRect? = nil) {
        addChild(child)
        if let frame = frame {
            child.view.frame = frame
        }
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()

   }

}
