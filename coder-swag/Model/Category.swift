//
//  Category.swift
//  coder-swag
//
//  Created by Unmilan on 29/08/20.
//  Copyright © 2020 Unmilan. All rights reserved.
//

import Foundation

struct Category {//A struct or class can be used to create multiple copies of it.
    
    private(set) public var title: String//private(set) basically allows us to retrieve and use the variable we declared here, i.e. title. But it does not allow us to set/modify them in any other class or file.
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {//This sets the structure of data we will be passing.
        
        self.title = title
        self.imageName = imageName
        
    }
}
