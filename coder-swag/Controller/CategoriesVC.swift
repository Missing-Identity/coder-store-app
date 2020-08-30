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
        
        categoryTable.dataSource = self
        categoryTable.delegate = self//Here we are saying that the datasource and delegate is this self. This is required for the UITableViewDataSource and UITableViewDelegate to work.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count//This returns the total number of items in the Array, i.e. the categories array from DataService class.
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {//dequeue reusable cell sets the pattern for reusable cell. Also here the "CategoryCell" is an identifier for our CategoryCell or rather TableCell in general. We gotta change the identifier of our TableCell/CategoryCell in the Main storyboard in the TableCell attributes tab for this to work.
            
            let category = DataService.instance.getCategories()[indexPath.row]//Here we are returning an array from a function. We are first grabbing the categories and then we are grabbing the specific item from the category.
            
            cell.updateViews(category: category)
            return cell
            
        }
        else {
            
            return CategoryCell()
            
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {//This function is availabe in the UITableViewDelegate.
        
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)//Sends the data from category constant and passing it to the ProductsVC View Controller. This allows us to pass data to that view to our Products VC when we do the prepareforsegue. **
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {//We are grabbing the destination View Controller and casting it to the appropriate view controller.
            
            assert(sender as? Category != nil)//This is only for build time. This basically tells the system that the sender must absolutely be of type category and if it's not then the app won't build. This is to prevent app from crashing as run time.
            
            
            productsVC.initProducts(category: sender as! Category)//We are grabbing productsVC then we are calling the initProducts func in it. Sender is the category which we passed in earlier through sender, see ** in above comments. So here we are grabbing the sender with type category here and force unwrapping it with ! because we know for a fact that it is a catagory.
            
        }
    }
}

