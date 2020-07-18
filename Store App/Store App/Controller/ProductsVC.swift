//
//  ProductsVC.swift
//  Online Store App
//
//  Created by Mostafa on 7/4/20.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController  , UICollectionViewDelegate,UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    
    
    @IBOutlet weak var collectionProduct:UICollectionView!
    private(set) public var products = [Products]()
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionProduct.dataSource = self
        collectionProduct.delegate = self
    }
    func initProducts(category : Category)  {
            products = DataServices.instance.getProducts(forCategoryTitle: category.title)
            navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsVC", for: indexPath) as? ProductsCell {
                   let product = products[indexPath.row]
                   cell.updateViews(product: product)
                   return cell
               }
               
               return ProductsCell()
           }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//    {
//        let cellWidth = view.frame.size.width / 2 - 5
//        return CGSize(width: cellWidth, height: cellWidth + 100)
//    }


}
