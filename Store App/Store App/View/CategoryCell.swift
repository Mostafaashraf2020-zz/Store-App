//
//  CategoryCell.swift
//  Online Store App
//
//  Created by Mostafa on 7/2/20.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!

    func updateViews(category : Category)  {
        categoryImage.image=UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
