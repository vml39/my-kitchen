////
////  NetworkManager.swift
////  recipes
////
////  Created by Vivian Li on 7/19/18.
////  Copyright © 2018 Vivian. All rights reserved.
////
//
//import Foundation
//
//import Alamofire
//import SwiftyJSON
//
//class Network {
//
//    // use this api for the main page but my api for the others
//    private static let endpoint = "http://www.recipepuppy.com/api/"
//
//    static func getRecipes(withQuery query:String, _ completion: @escaping (([Recipe]) -> Void)) {
//
//        let parameters: Parameters = [
//            "q": query // this is the query, make it so you can search between ingredients and recipes oR both!
//            //            "i": "ingredients"
//        ]
//
//        Alamofire.request(endpoint, parameters: parameters).validate().responseJSON { (response)
//            in
//
//            switch response.result {
//
//            case .success(let json):
//                let json = JSON(json)
//                var recipes: [Recipe] = []
//
//                for recipeJSON in json["results"].arrayValue {
//                    recipes.append(Recipe(from: recipeJSON))
//                }
//
//                completion(recipes)
//
//            case.failure(let error):
//
//                print("Error:", error)
//                completion([])
//            }
//        }
//    }
//
//}
