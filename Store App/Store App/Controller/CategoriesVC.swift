//
//  ViewController.swift
//  Store App
//
//  Created by Mostafa on 6/29/20.
//  Copyright © 2020 Mostafa. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController , UITableViewDataSource , UITableViewDelegate {
 
    
    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataServices.instance.getCategories().count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell  = tableView.dequeueReusableCell(withIdentifier: "cell") as? CategoryCell
        {
            let z = DataServices.instance.getCategories()[indexPath.row]
            cell.updateViews(category: z)
           
           

            return cell
        } else{
            return CategoryCell()
        }
     }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataServices.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC {
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            assert(sender as? Category != nil)
            productsVC.initProducts(category: sender as! Category)
        }
    }
        
        
    }
     
    
    
    
    



