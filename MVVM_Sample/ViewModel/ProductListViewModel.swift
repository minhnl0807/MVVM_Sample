//
//  ProductListViewModel.swift
//  MVVM_Sample
//
//  Created by Minh on 10/24/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import Foundation

protocol ProductListViewModelProtocol: class {
    var products : [Product] { get }
    var productListDataSource: ProductListDataSource! { get set }
    var productsDidChange: ((ProductListViewModelProtocol) -> ())? { get set }
    init(products: [Product])
    func showProductList()
}

class ProductListViewModel: ProductListViewModelProtocol {
    private(set) var products: [Product]
    
    var productListDataSource: ProductListDataSource! {
        didSet {
            self.productsDidChange?(self)
        }
    }
    
    var productsDidChange: ((ProductListViewModelProtocol) -> ())?
    
    required init(products: [Product]) {
        self.products = products
    }
    
    func showProductList() {
        productListDataSource = ProductListDataSource(products: products)
    }
}
