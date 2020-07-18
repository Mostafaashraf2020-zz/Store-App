//
//  ProductsCell.swift
//  Online Store App
//
//  Created by Mostafa on 7/4/20.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class ProductsCell: UICollectionViewCell {
    
    
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice:UILabel!
    
    
    func updateViews(product : Products)  {
        productImage.image=UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
}
