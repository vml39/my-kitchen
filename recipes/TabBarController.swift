//
//  TabBarController.swift
//  recipes
//
//  Created by Vivian Li on 7/19/18.
//  Copyright © 2018 Vivian. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let homeVC = homeViewController()
       homeVC.tabBarItem = UITabBarItem(title: "home", image: UIImage(named: "first"), tag: 0)
        
        let myRecipesVC = myRecipesViewController()
        myRecipesVC.tabBarItem = UITabBarItem(title: "my recipes", image: UIImage(named: "second"), tag: 1)
        
        let pantryVC = pantryViewController()
        pantryVC.tabBarItem = UITabBarItem(title: "pantry", image: UIImage(named: "second"), tag: 2)
        
        let groceryVC = groceryViewController()
        groceryVC.tabBarItem = UITabBarItem(title: "groceries", image: UIImage(named: "second"), tag: 3)
        
        let viewControllerList = [homeVC, myRecipesVC, pantryVC, groceryVC]
        
        viewControllers = viewControllerList.map{UINavigationController(rootViewController: $0)}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
