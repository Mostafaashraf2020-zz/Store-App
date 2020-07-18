//
//  Products.swift
//  Online Store App
//
//  Created by Mostafa on 7/4/20.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import Foundation
struct Products {
    private (set) public var price : String!
    private(set) public var title : String!
    private (set) public var imageName : String!
    
    init(title : String , price : String, imageName:String) {
        self.title = title
        self.imageName = imageName
        self.price = price
    }
    
    
}
