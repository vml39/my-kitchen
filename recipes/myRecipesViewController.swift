//
//  SecondViewController.swift
//  recipes
//
//  Created by Vivian Li on 7/18/18.
//  Copyright © 2018 Vivian. All rights reserved.
//

import UIKit

protocol SaveButtonDelegate {
    func saveButtonPressed()
}

class myRecipesViewController: UIViewController {
    
    var addRecipeButton: UIButton!
    var addRecipeBarButtonItem: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        self.navigationItem.title = "My Recipes"
    
        addRecipeButton = UIButton()
        addRecipeButton.setTitle("+", for: .normal)
        addRecipeButton.setTitleColor(UIColor.white, for: .normal)
        addRecipeButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
//        addRecipeButton.addTarget(self, action: #selector(addRecipeButtonPressed), for: .touchUpInside)
        
        addRecipeBarButtonItem = UIBarButtonItem(customView: addRecipeButton)
        self.navigationItem.rightBarButtonItem = addRecipeBarButtonItem
        
        // Do any additional setup after loading the view.
    }
    
//    @objc func addRecipeButtonPressed(sender: UIButton) {
//        let addRecipeVC = addRecipeViewController()
//        addRecipeVC.delegate = self
//        navigationController?.pushViewController(addRecipeVC, animated: true)
//    }
    
    func saveButtonPressed() {
        // send info to database: send a post request using the values we obtained from the survey
        navigationController?.popToRootViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

