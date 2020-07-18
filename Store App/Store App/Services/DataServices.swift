//
//  DataServices.swift
//  Online Store App
//
//  Created by Mostafa on 7/3/20.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import Foundation
class DataServices {
    static let instance = DataServices ()
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
     Category(title: "HOODIES", imageName: "hoodies.png"),
         Category(title: "HATS", imageName: "hats.png"),
         Category(title: "DIGITAL", imageName: "digital.png")
    
    ]
    
    private let hats = [
    Products(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
    Products(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
    Products(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
    Products(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    
    ]
    
    private let hoodies = [
    Products(title: "Devslopes Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
    Products(title: "Devslopes Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
    Products(title: "Devslopes Hoodie Grey", price: "$32", imageName: "hoodie03.png"),
    Products(title: "Devslopes Hoodie Black", price: "$32", imageName: "hoodie04.png"),
    ]
    
    private let shirts = [
           Products(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
           Products(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
           Products(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
           Products(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
           Products(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
       ]
    
     private let digitalGoods = [Products]()
    
    
    func getProducts(forCategoryTitle title : String) -> [Products] {
        switch title {
        case "SHIRTS":
        return getShirts()
        case "DIGITAL":
        return getDigitalGoods()
        case "HATS":
       return getHats()
       case "HOODIES":
       return  getHoodies()
        default:
         return   getShirts()
        }
    }
    
    
    
    func getHats() -> [Products] {
        return hats
    }
    func getHoodies() -> [Products] {
        return hoodies
    }
    func getShirts() -> [Products] {
        return shirts
    }
    func getDigitalGoods() -> [Products] {
        return digitalGoods
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func getCategories() -> [Category]
    {
        return categories
    }
}
