//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Unmilan on 30/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    
    private(set) public var products = [Product]()//We made this an empty array so that in case the data takes time to load it will atleast have the format ready or else the app will crash.

    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self//Same reason as for TableView
    }

    func initProducts(category: Category) {
        
        products = DataService.instance.getProducts(forCategoryTitle: category.title)//We are passing in the title that was passed in from CategoriesVC.
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count//This is for single collection view app. If you have multiple collection views then you can keep them in if statements such as "if (section == 1) {} else if (section == 2) {}, etc.
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for:  indexPath) as? ProductCell {//Casting it as ProductCell
            
            let product = products[indexPath.row]//We are grabbing the appropriate row for the product and we are storing it in the product constant.
            
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
    }
    
}
