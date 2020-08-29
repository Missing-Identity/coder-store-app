//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Unmilan on 27/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var catergoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateViews(category: Category) {
        
        catergoryImage.image = UIImage(named: category.imageName)//This sets the categoryImage to the image set in the category class.
        categoryTitle.text = category.title
    }

}
