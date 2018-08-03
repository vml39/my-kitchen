//
//  recipeViewController.swift
//  recipes
//
//  Created by Vivian Li on 7/19/18.
//  Copyright © 2018 Vivian. All rights reserved.
//

import UIKit
import SnapKit

class recipeViewController: UIViewController {
    
    var thumbnail: UIImageView?
    
    var recipeName: UILabel!
    
    var cookTimeLabel: UILabel?
    var cookTime: UILabel?
    
    var ingredientsLabel: UILabel!
    var ingredients: UILabel!
    
    var instructionsLabel: UILabel?
    var instructions: UILabel?
    
    var dismissButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // check if there is a thumbnail, cooktime, instructions -- if let

        // Do any additional setup after loading the view.
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
