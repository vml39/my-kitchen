//
//  addRecipeViewController.swift
//  recipes
//
//  Created by Vivian Li on 7/19/18.
//  Copyright © 2018 Vivian. All rights reserved.
//

import UIKit

class addRecipeViewController: UIViewController {
    
    var saveButton: UIButton!
    var delegate: SaveButtonDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        saveButton = UIButton()
        saveButton.setTitle("Save", for: .normal)
        saveButton.setTitleColor(.white, for: .normal)
        //        saveButton.layer.backgroundColor = buttonColor.cgColor
        saveButton.layer.cornerRadius = 10
        saveButton.addTarget(self, action: #selector(saveButtonPressed), for: .touchUpInside)
        
    }
    
    @objc func saveButtonPressed() {
        // send a post request with the recipe info, write to db
        //        if let _ = nameTextfield.text {
        //            delegate?.surveySaveButtonPressed()
        //        }
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
