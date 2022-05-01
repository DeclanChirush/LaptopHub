//
//  NewProductViewController.swift
//  Assigment3
//
//  Created by Interactive Media on 4/23/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class NewProductViewController: UIViewController {

    @IBOutlet weak var newProductCollectionVIew: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        newProductCollectionVIew.dataSource = self
        newProductCollectionVIew.delegate = self
        newProductCollectionVIew.collectionViewLayout = UICollectionViewFlowLayout()
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

extension NewProductViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newProductItemList.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewProductCollectionViewCell", for: indexPath) as! NewProductCollectionViewCell
        
        cell.setup(with: newProductItemList[indexPath.row])
        
        return cell
    }
}

extension NewProductViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 202, height: 260)
    }
}

extension NewProductViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(newProductItemList[indexPath.row].title)
        
        let newProduct = newProductItemList[indexPath.row]
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let singleProductViewController = storyBoard.instantiateViewController(withIdentifier: "SIngleProductViewController") as! SIngleProductViewController
        singleProductViewController.productItem = newProduct
        
        self.navigationController?.pushViewController(singleProductViewController, animated: true)
    }
}
