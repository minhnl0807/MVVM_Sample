//
//  ProductListDataSource.swift
//  MVVM_Sample
//
//  Created by Minh on 10/24/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import UIKit

class ProductListDataSource: NSObject, UITableViewDataSource {
    
    var products: [Product]
    
    init(products: [Product]) {
        self.products = products
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ProductCell", owner: self, options: nil)?.first as! ProductCell
        let product = products[indexPath.row]
        cell.nameLabel.text = product.name
        cell.priceLabel.text = String(product.price)
        return cell
    }
}
