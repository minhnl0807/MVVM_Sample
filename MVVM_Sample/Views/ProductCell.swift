//
//  ProductCell.swift
//  MVVM_Sample
//
//  Created by hieuwork on 10/25/17.
//  Copyright © 2017 Minh. All rights reserved.
//

import UIKit

class ProductCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
