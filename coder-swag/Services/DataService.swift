//
//  DataService.swift
//  coder-swag
//
//  Created by Unmilan on 29/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import Foundation

class DataService {
    
    static let instance = DataService()//Static means we can only create one copy of it. We can only create one DataService. This data stores main data of the app and stays as long as the app is on unlike other data in the app which can get destroyed.
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]//This means categories is an array of type Category.
    
    func getCategories() -> [Category] {//The return type here is set to an array of type "Category" as defined earlier.
        
        return categories //This returns the array categories to whoever calls this function.
        
    }
}
