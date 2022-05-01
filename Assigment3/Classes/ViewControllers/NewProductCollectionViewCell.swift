//
//  NewProductCollectionViewCell.swift
//  Assigment3
//
//  Created by Interactive Media on 4/23/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class NewProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var newProductImage: UIImageView!
    @IBOutlet weak var txtNewProductTitle: UILabel!
    @IBOutlet weak var txtNewProductPrice: UILabel!
    @IBOutlet weak var btn_newProductBtn: UIButton!
    
    func setup(with product: ProductItem){
        newProductImage.image = product.image
        txtNewProductTitle.text = product.title
        txtNewProductPrice.text = product.price
    }
    
}
