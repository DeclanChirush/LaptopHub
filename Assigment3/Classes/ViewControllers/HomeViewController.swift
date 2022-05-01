//
//  HomeViewController.swift
//  Assigment3
//
//  Created by Interactive Media on 4/24/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var homeFeturedCollectionView: UICollectionView!
    @IBOutlet weak var homeNewProductCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        homeFeturedCollectionView.dataSource = self
        homeFeturedCollectionView.delegate = self
        homeFeturedCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
        homeNewProductCollectionView.dataSource = self
        homeNewProductCollectionView.delegate = self
        homeNewProductCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
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

extension HomeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.homeFeturedCollectionView{
            
            let homeFeturedCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeFeturedProductCollectionViewCell", for: indexPath) as! HomeFeturedProductCollectionViewCell
            homeFeturedCell.setup(with: feturedProductItemList[indexPath.row])
            return homeFeturedCell
            
        }else{
           
            let homeNewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeNewProductCollectionViewCell", for: indexPath) as! HomeNewProductCollectionViewCell
            homeNewCell.setup(with: newProductItemList[indexPath.row])
            return homeNewCell
        }
        
        
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.homeFeturedCollectionView{
            return CGSize(width: 193, height: 233)
        }else{
            return CGSize(width: 193, height: 233)
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.homeFeturedCollectionView{
            print(feturedProductItemList[indexPath.row].title)
            
            let featuredProduct = feturedProductItemList[indexPath.row]
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let singleProductViewController = storyBoard.instantiateViewController(withIdentifier: "SIngleProductViewController") as! SIngleProductViewController
            singleProductViewController.productItem = featuredProduct
            
            self.navigationController?.pushViewController(singleProductViewController, animated: true)
            
        }else{
            print(newProductItemList[indexPath.row].title)
            
            let newProduct = newProductItemList[indexPath.row]
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let singleProductViewController = storyBoard.instantiateViewController(withIdentifier: "SIngleProductViewController") as! SIngleProductViewController
            singleProductViewController.productItem = newProduct
            
            self.navigationController?.pushViewController(singleProductViewController, animated: true)
        }
    }
}
