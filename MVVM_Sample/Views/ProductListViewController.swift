//
//  ViewController.swift
//  MVVM_Sample
//
//  Created by Minh on 10/24/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var viewModel: ProductListViewModel! {
        didSet {
            self.viewModel.productsDidChange = { [unowned self] viewModel in
                self.tableView.dataSource = self.viewModel.productListDataSource
                self.tableView.reloadData()
            }
        }
    }
    
    let products = [
        Product(name: "Monitor", price: 20),
        Product(name: "Keyboard", price: 6),
        Product(name: "Mouse", price: 5)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ProductListViewModel(products: products)
        viewModel.showProductList()
    }

}

