//
//  Product.swift
//  coder-swag
//
//  Created by Unmilan on 30/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import Foundation

struct Product {//Always use a struct unless you really need a class.
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price:String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
