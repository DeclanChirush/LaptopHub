//
//  ProductCollectionViewCell.swift
//  Assigment3
//
//  Created by Interactive Media on 4/23/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class FeaturedProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var txtProductTitle: UILabel!
    @IBOutlet weak var txtProductPrice: UILabel!
    @IBOutlet weak var btn_addToCart: UIButton!
    
    func setup(with product: ProductItem){
        productImageView.image = product.image
        txtProductTitle.text = product.title
        txtProductPrice.text = product.price
    }
}
