//
//  HomeFeturedProductCollectionViewCell.swift
//  Assigment3
//
//  Created by Interactive Media on 4/24/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class HomeFeturedProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var homeFeturedProductImage: UIImageView!
    @IBOutlet weak var txtHomeFeturedProductTitle: UILabel!
    @IBOutlet weak var txtHomeFeturedProductPrice: UILabel!
    @IBOutlet weak var btn_homeFetured: UIButton!
    
    
    func setup(with product: ProductItem){
        homeFeturedProductImage.image = product.image
        txtHomeFeturedProductTitle.text = product.title
        txtHomeFeturedProductPrice.text = "LKR \(String(product.price))"
    }
    
}
