//
//  LaptopTableViewCell.swift
//  Assigment3
//
//  Created by Interactive Media on 4/29/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class LaptopTableViewCell: UITableViewCell {

 
    @IBOutlet weak var laptopImage: UIImageView!
    @IBOutlet weak var laptopName: UILabel!
    @IBOutlet weak var laptopCode: UILabel!
    @IBOutlet weak var laptopPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(with order: ProductItem){
        laptopImage.image = order.image
        laptopName.text = order.title
        laptopCode.text = "Order ID : \(String(order.code))"
        laptopPrice.text = "LKR \(String(order.price))"
    }

}
