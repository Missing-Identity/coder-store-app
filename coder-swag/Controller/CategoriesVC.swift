//
//  ViewController.swift
//  coder-swag
//
//  Created by Unmilan on 27/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count//This returns the total number of items in the Array, i.e. the categories array from DataService class.
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {//dequeue reusable cell sets the pattern for reusable cell
            
            let category = DataService.instance.getCategories()[indexPath.row]//Here we are returning an array from a function. We are first grabbing the categories and then we are grabbing the specific item from the category.
            cell.updateViews(category: category)
            return cell
            
        }
        else {
            
            return CategoryCell()
            
        }
    }
    
}

