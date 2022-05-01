//
//  ResetPasswordViewController.swift
//  Assigment3
//
//  Created by Interactive Media on 4/24/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    @IBOutlet weak var btn_resetPassword: UIButton!
    let alertTitle = "Password Resetted Successfully"
    let alertInfo = "Please login with your new credentials"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_checkResetPassword(_ sender: Any) {
        let alert = UIAlertController(title: alertTitle , message: alertInfo, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Go to Login >", style: UIAlertAction.Style.default){
            action -> Void in
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let resetPasswordViewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                       
            self.navigationController?.pushViewController(resetPasswordViewController, animated: true)
        })
        self.present(alert, animated: true, completion: nil)
        
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
