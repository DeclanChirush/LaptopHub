//
//  CartTableViewCell.swift
//  Assigment3
//
//  Created by Interactive Media on 4/29/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class CartTableViewCell: UITableViewCell {


    @IBOutlet weak var laptopImage: UIImageView!
    @IBOutlet weak var laptopName: UILabel!
    @IBOutlet weak var laptopCode: UILabel!
    @IBOutlet weak var laptopPrice: UILabel!
    
    @IBOutlet weak var cartLaptopCount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setup(with cart: ProductItem){
        laptopImage.image = cart.image
        laptopName.text = cart.title
        laptopCode.text = "Order ID : \(String(cart.code))"
        laptopPrice.text = "LKR \(String(cart.price))"
    }
}
