//
//  Recipe.swift
//  recipes
//
//  Created by Vivian Li on 7/19/18.
//  Copyright © 2018 Vivian. All rights reserved.
//

import Foundation
import SwiftyJSON

class Recipe: NSObject {
    
    var recipeName: String?
    var cookTime: String?
    var ingredients: String?
    var instructions: String?
    var thumbnail: URL?
    
    init(recipeName: String, cookTime: String?, ingredients: String?, instructions: String?, thumbnail: URL?) {
        self.recipeName = recipeName
        self.cookTime = cookTime
        self.ingredients = ingredients
        self.instructions = instructions // check recipes api to see what their variable name is
        self.thumbnail = thumbnail
    }
    
    //    init(from json: JSON) {
    //        self.recipeName = json["title"].stringValue
    //        self.ingredients = json["ingredients"].stringValue
    //        self.thumbnail = json["thumbnail"].url
    //    }
}
