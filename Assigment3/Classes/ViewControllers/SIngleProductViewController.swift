//
//  SIngleProductViewController.swift
//  Assigment3
//
//  Created by Interactive Media on 4/24/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class SIngleProductViewController: UIViewController {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productCode: UILabel!
    @IBOutlet weak var productAvailabilityUnitCount: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var productOriginalPrice: UILabel!
    @IBOutlet weak var productDescription: UILabel!
    @IBOutlet weak var productDescriptionDetails: UILabel!
    
    
    @IBOutlet weak var btn_productReduce: UIButton!
    @IBOutlet weak var productCount: UILabel!
    @IBOutlet weak var btn_productIncrease: UIButton!
    @IBOutlet weak var btn_addToCart: UIButton!
    @IBOutlet weak var bottomView: UIView!
    
    
    var productItem: ProductItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setProductInfomation(item: productItem)
        bottomView.layer.borderWidth = 1
        bottomView.layer.borderColor = UIColor.gray.cgColor
    }
    
    func setProductInfomation(item: ProductItem){
        self.title = item.title
        productImage.image = item.image
        productName.text = item.title
        productCode.text = "Code : \(String(item.code))"
        productAvailabilityUnitCount.text = "\(String(item.availableUnits)) units available"
        productPrice.text = "LKR \(String(item.price))"
        productOriginalPrice.text = "LKR \(String(item.originalPrice))0"
        productDescriptionDetails.text = "\(String(item.description))"
        
        productCount.text = "\(String(item.count))"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
