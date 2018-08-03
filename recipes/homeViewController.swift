//
//  FirstViewController.swift
//  recipes
//
//  Created by Vivian Li on 7/18/18.
//  Copyright © 2018 Vivian. All rights reserved.
//

import UIKit
import SnapKit

class homeViewController: UIViewController {
    
    var recipes: [Recipe] = []
    
    var searchBar: UISearchBar!
    
    var tableView: UITableView!
    
    let reuseIdentifier = "ReuseIdentifier"
    
    let padding: CGFloat = 16
    
    let myColor: UIColor = UIColor(red: 255/255, green: 118/255, blue: 109/255, alpha: 0.4) // change this


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        self.navigationItem.title = "All Recipes"
        
        searchBar = UISearchBar()
        view.addSubview(searchBar)
        
        setUpConstraints()
    }
    
    func setUpConstraints() {
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(32)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().offset(-100)
            make.height.equalTo(24)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) ?? UITableViewCell(style: .subtitle, reuseIdentifier: reuseIdentifier)
        
        cell.textLabel?.text = recipe.recipeName
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        cell.textLabel?.text = recipe.cookTime
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        cell.detailTextLabel?.text = recipe.ingredients
        cell.detailTextLabel?.alpha = 0.5
        cell.detailTextLabel?.numberOfLines = 0
        cell.detailTextLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        if let data = recipe.thumbnail {
            let recipeImage = try? Data(contentsOf: data)
            cell.imageView?.image = UIImage(data: recipeImage!)
        }
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

