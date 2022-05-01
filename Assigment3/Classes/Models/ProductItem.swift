//
//  ProductItem.swift
//  Assigment3
//
//  Created by Interactive Media on 4/23/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import Foundation

import UIKit

struct ProductItem {
    let title: String
    let price: String
    let description: String
    let code: Int
    let availableUnits: Int
    let originalPrice: Double
    let count: Int
    let image: UIImage
}

let feturedProductItemList: [ProductItem] = [
    
    ProductItem(title: "MSI GF63 Thin ", price: "299,000.00",description: "The MSI GF63 brings thin and light gaming to the mainstream, featuring thin bezel display with up to 10th gen Intel Core i7 processor and GeForce GTX 1650", code: 1003, availableUnits: 23, originalPrice: 300000.00, count: 5, image: #imageLiteral(resourceName: "msi_gaming")),
    
    ProductItem(title: "ASUS TUF 66 ", price: "310,000.00",description: "2022 TUF Gaming A15 is equipped with Windows 11, an AMD Ryzen™ 7 6800H and NVIDIA® RTX™ 3070. Fluid gameplay awaits on up to a QHD 165Hz display", code: 10203, availableUnits: 23, originalPrice: 320000.00, count: 4, image: #imageLiteral(resourceName: "asus_gaming")),
    
    ProductItem(title: "Acer Nitro 45", price: "265,000.00",description: "Acer - Nitro 5 15.6 Laptop - Intel Core i5 - 8GB Memory - NVIDIA GeForce GTX 1650 - 256GB SSD - Obsidian Black This laptop has a 60 hz screen and a 1650 Nvidia ", code: 14403, availableUnits: 23, originalPrice: 300000.00, count: 6,  image: #imageLiteral(resourceName: "nitro_gaming")),
    
    ProductItem(title: "Rog Strix 99", price: "420,000.00",description: "GeForce RTX™ 3080 Laptop GPU; Windows 10 Home; Free Upgrade to Windows 11¹; AMD Ryzen™ 9 5000 Series; 15.6 inch, FHD (1920 x 1080) 16:9, Refresh Rate:300Hz", code: 1443, availableUnits: 23, originalPrice: 500000.00, count: 3,  image: #imageLiteral(resourceName: "rog_gaming")),
    
    ProductItem(title: "Dell Inspiron", price: "460,000.00",description: "Dell Inspiron 15 7000 Series Gaming Edition 7567 15.6-Inch Full HD Screen Laptop - Intel Core i5-7300HQ, 1 TB Hybrid HDD, 8GB DDR4 Memory, NVIDIA GTX 1050 4GB", code: 2403, availableUnits: 23, originalPrice: 500000.00, count: 10,  image: #imageLiteral(resourceName: "dell_gaming")),
    
    ProductItem(title: "HP Pavilion 7", price: "200,000.00",description: "HP Pavilion Gaming ; AMD Ryzen™ 5 5600H (up to 4.2 GHz, 16 MB L3 cache, 6 cores, 12 thread) + NVIDIA® GeForce® GTX 1650 (4 GB)8 GB DDR4-3200 SDRAM (2 X 4 GB)256", code: 1044, availableUnits: 23, originalPrice: 300000.00, count: 14,  image: #imageLiteral(resourceName: "hp_gaming")),
    
    ProductItem(title: "AlenWare G99", price: "700,000.00",description: "Alienware m15 R7 Gaming Laptop · 12th Gen Intel® Core™ i7-12700H (24 MB cache, 14 cores, 20 threads, up to 4.70 GHz Turbo) · Windows 11 Pro, English", code: 1020, availableUnits: 23, originalPrice: 800000.00, count: 2,  image: #imageLiteral(resourceName: "alien_gaming")),
]

let newProductItemList: [ProductItem] = [
    
    ProductItem(title: "AlenWare G99", price: "700,000.00",description: "Alienware m15 R7 Gaming Laptop · 12th Gen Intel® Core™ i7-12700H (24 MB cache, 14 cores, 20 threads, up to 4.70 GHz Turbo) · Windows 11 Pro, English", code: 4324, availableUnits: 23, originalPrice: 800000.00, count: 11, image: #imageLiteral(resourceName: "alien_gaming")),
    
    ProductItem(title: "HP Pavilion 7", price: "200,000.00",description: "HP Pavilion Gaming ; AMD Ryzen™ 5 5600H (up to 4.2 GHz, 16 MB L3 cache, 6 cores, 12 thread) + NVIDIA® GeForce® GTX 1650 (4 GB)8 GB DDR4-3200 SDRAM (2 X 4 GB)256", code: 10203, availableUnits: 23, originalPrice: 300000.00, count: 13,   image: #imageLiteral(resourceName: "hp_gaming")),
    
    ProductItem(title: "Dell Inspiron", price: "460,000.00",description: "Dell Inspiron 15 7000 Series Gaming Edition 7567 15.6-Inch Full HD Screen Laptop - Intel Core i5-7300HQ, 1 TB Hybrid HDD, 8GB DDR4 Memory, NVIDIA GTX 1050 4GB", code: 1033, availableUnits: 23, originalPrice: 500000.00, count: 9,   image: #imageLiteral(resourceName: "dell_gaming")),
    
    ProductItem(title: "Rog Strix 99", price: "400,000.00",description: "GeForce RTX™ 3080 Laptop GPU; Windows 10 Home; Free Upgrade to Windows 11¹; AMD Ryzen™ 9 5000 Series; 15.6 inch, FHD (1920 x 1080) 16:9, Refresh Rate:300Hz", code: 3244, availableUnits: 23, originalPrice: 500000.00, count: 7,   image: #imageLiteral(resourceName: "rog_gaming")),
    
    ProductItem(title: "Acer Nitro 45", price: "265,000.00",description: "Acer - Nitro 5 15.6 Laptop - Intel Core i5 - 8GB Memory - NVIDIA GeForce GTX 1650 - 256GB SSD - Obsidian Black This laptop has a 60 hz screen and a 1650 Nvidia ", code: 4424, availableUnits: 23, originalPrice: 300000.00, count: 4, image: #imageLiteral(resourceName: "nitro_gaming")),
    
    ProductItem(title: "ASUS TUF 66 ", price: "310,000.00",description: "2022 TUF Gaming A15 is equipped with Windows 11, an AMD Ryzen™ 7 6800H and NVIDIA® RTX™ 3070. Fluid gameplay awaits on up to a QHD 165Hz display", code: 10203, availableUnits: 23, originalPrice: 400000.00, count: 3,  image: #imageLiteral(resourceName: "asus_gaming")),
    
    ProductItem(title: "MSI GF63 Thin ", price: "299,000.00",description: "The MSI GF63 brings thin and light gaming to the mainstream, featuring thin bezel display with up to 10th gen Intel Core i7 processor and GeForce GTX 1650", code: 1003, availableUnits: 23, originalPrice: 300000.00, count: 10,  image: #imageLiteral(resourceName: "msi_gaming")),
    
    
]

let orderItemList: [ProductItem] = [
    
    ProductItem(title: "AlenWare G99", price: "700,000.00",description: "Alienware m15 R7 Gaming Laptop · 12th Gen Intel® Core™ i7-12700H (24 MB cache, 14 cores, 20 threads, up to 4.70 GHz Turbo) · Windows 11 Pro, English", code: 4324, availableUnits: 23, originalPrice: 800000.00, count: 9, image: #imageLiteral(resourceName: "alien_gaming")),
    
    ProductItem(title: "HP Pavilion 7", price: "200,000.00",description: "HP Pavilion Gaming ; AMD Ryzen™ 5 5600H (up to 4.2 GHz, 16 MB L3 cache, 6 cores, 12 thread) + NVIDIA® GeForce® GTX 1650 (4 GB)8 GB DDR4-3200 SDRAM (2 X 4 GB)256", code: 10203, availableUnits: 23, originalPrice: 300000.00, count: 2,   image: #imageLiteral(resourceName: "hp_gaming")),
    
    ProductItem(title: "Dell Inspiron", price: "460,000.00",description: "Dell Inspiron 15 7000 Series Gaming Edition 7567 15.6-Inch Full HD Screen Laptop - Intel Core i5-7300HQ, 1 TB Hybrid HDD, 8GB DDR4 Memory, NVIDIA GTX 1050 4GB", code: 1003, availableUnits: 23, originalPrice: 500000.00, count: 5,   image: #imageLiteral(resourceName: "dell_gaming")),
    
    ProductItem(title: "MSI GF63 Thin ", price: "299,000.00",description: "The MSI GF63 brings thin and light gaming to the mainstream, featuring thin bezel display with up to 10th gen Intel Core i7 processor and GeForce GTX 1650", code: 1403, availableUnits: 23, originalPrice: 300000.00, count: 12,  image: #imageLiteral(resourceName: "msi_gaming")),
    
]

let cartItemList: [ProductItem] = [
    
    ProductItem(title: "HP Pavilion 7", price: "200,000.00",description: "HP Pavilion Gaming ; AMD Ryzen™ 5 5600H (up to 4.2 GHz, 16 MB L3 cache, 6 cores, 12 thread) + NVIDIA® GeForce® GTX 1650 (4 GB)8 GB DDR4-3200 SDRAM (2 X 4 GB)256", code: 10203, availableUnits: 23, originalPrice: 300000.00, count: 10,  image: #imageLiteral(resourceName: "hp_gaming")),
    
    ProductItem(title: "AlenWare G99", price: "700,000.00",description: "Alienware m15 R7 Gaming Laptop · 12th Gen Intel® Core™ i7-12700H (24 MB cache, 14 cores, 20 threads, up to 4.70 GHz Turbo) · Windows 11 Pro, English", code: 54355, availableUnits: 23, originalPrice: 800000.00, count: 22,  image: #imageLiteral(resourceName: "alien_gaming")),
]
