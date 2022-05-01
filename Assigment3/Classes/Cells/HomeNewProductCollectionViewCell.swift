//
//  HomeNewProductCollectionViewCell.swift
//  Assigment3
//
//  Created by Interactive Media on 4/24/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class HomeNewProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var homeNewProductImage: UIImageView!
    @IBOutlet weak var txtHomeNewProductTitle: UILabel!
    @IBOutlet weak var txtHomeNewProductPrice: UILabel!
    @IBOutlet weak var btn_homeNew: UIButton!
    
    func setup(with product: ProductItem){
        homeNewProductImage.image = product.image
        txtHomeNewProductTitle.text = product.title
        txtHomeNewProductPrice.text = "LKR \(String(product.price))"
    }
}
