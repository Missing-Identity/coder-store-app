//
//  ProductCell.swift
//  coder-swag
//
//  Created by Unmilan on 30/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {//This is to update view in the cell.
        
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
        
    }
}
