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
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$18", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt015.png")
    ]
    
    private let digitalGoods = [Product]()//Empty paranthesis creates an empty array.
    
    func getCategories() -> [Category] {//The return type here is set to an array of type "Category" as defined earlier.
        
        return categories //This returns the array categories to whoever calls this function.
        
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {//This means this function will return an array of type product.
        
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
        
    }
    
    func getHats() -> [Product] {
        
        return hats
        
    }
    
    func getHoodies() -> [Product] {
        
        return hoodies
        
    }
    
    func getShirts() -> [Product] {
        
        return shirts
        
    }
    
    func getDigitalGoods() -> [Product] {
        
        return digitalGoods
        
    }
}
