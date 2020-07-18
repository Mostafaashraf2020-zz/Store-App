//
//  Category.swift
//  Online Store App
//
//  Created by Mostafa on 7/3/20.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import Foundation
struct Category {
    private (set) public var title : String!
    private (set) public var imageName : String!
    
    init(title : String , imageName : String) {
        self.title = title
        self.imageName = imageName
    }
    
    
}
