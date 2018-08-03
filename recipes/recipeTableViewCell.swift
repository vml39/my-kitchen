//
//  recipeTableViewCell.swift
//  recipes
//
//  Created by Vivian Li on 7/19/18.
//  Copyright © 2018 Vivian. All rights reserved.
//

import UIKit
import SnapKit

class recipeTableViewCell: UITableViewCell {
    
    var thumbnail: UIImageView?
    
    var recipeName: UILabel!
    
    var cookTimeLabel: UILabel?
    var cookTime: UILabel?
    
    var ingredientsLabel: UILabel!
    var ingredients: UILabel!
    
    let padding: CGFloat = 16
    let labelHeight: CGFloat = 24
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        thumbnail = UIImageView()
        thumbnail.contentMode = .scaleAspectFill
        contentView.addSubview(thumbnail)
        
        recipeName = UILabel()
        recipeName.font = .systemFont(ofSize: 18)
        contentView.addSubview(recipeName)
        
        cookTimeLabel = UILabel()
        cookTimeLabel.text = "Cook time: "
        contentView.addSubview(cookTimeLabel)
        
        cookTime = UILabel()
        contentView.addSubview(cookTime)
        
        ingredientsLabel = UILabel()
        ingredientsLabel.text = "Ingredients: "
        ingredientsLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        contentView.addSubview(ingredientsLabel)
        
        ingredients = UILabel()
        contentView.addSubview(ingredients)
        
    }
    
    override func updateConstraints() {
        thumbnail.snp.makeConstraints { make in
            make.top.bottom.leading.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo(thumbnail.snp.height)
        }
        
        recipeName.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(padding)
            make.leading.equalTo(thumbnail.snp.trailing).offset(32)
        }
        
        cookTimeLabel.snp.makeConstraints { make in
            make.top.equalTo(recipeName.snp.bottom).offset(padding)
            make.leading.equalTo(recipeName.snp.leading)
        }
        
        cookTime.snp.makeConstraints { make in
            make.top.equalTo(cookTimeLabel.snp.top)
            make.leading.equalTo(cookTimeLabel.snp.trailing).offset(padding)
        }
        
        ingredientsLabel.snp.makeConstraints { make in
            make.top.equalTo(cookTimeLabel.snp.bottom).offset(padding)
            make.leading.equalTo(recipeName.snp.leading)
        }
        
        ingredients.snp.makeConstraints { make in
            make.top.equalTo(ingredientsLabel.snp.top)
            make.leading.equalTo(ingredientsLabel.snp.trailing).offset(padding)
            make.trailing.equalToSuperview().offset(-padding)
        }
        
        super.updateConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
