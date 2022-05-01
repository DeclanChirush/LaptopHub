//
//  FeaturedProductViewController.swift
//  Assigment3
//
//  Created by Interactive Media on 4/23/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class FeaturedProductViewController: UIViewController {

    @IBOutlet weak var feturedProductCollectionVIew: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        feturedProductCollectionVIew.dataSource = self
        feturedProductCollectionVIew.delegate = self
        feturedProductCollectionVIew.collectionViewLayout = UICollectionViewFlowLayout()
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

extension FeaturedProductViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return feturedProductItemList.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeaturedProductCollectionViewCell", for: indexPath) as! FeaturedProductCollectionViewCell
        
        cell.setup(with: feturedProductItemList[indexPath.row])
        
        return cell
    }
}

extension FeaturedProductViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 202, height: 260)
    }
}

extension FeaturedProductViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(feturedProductItemList[indexPath.row].title)
        
        let featuredProduct = feturedProductItemList[indexPath.row]
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let singleProductViewController = storyBoard.instantiateViewController(withIdentifier: "SIngleProductViewController") as! SIngleProductViewController
        singleProductViewController.productItem = featuredProduct
        
        self.navigationController?.pushViewController(singleProductViewController, animated: true)
    }
}
