//
//  LoginViewController.swift
//  Assigment3
//
//  Created by m1 on 06/04/2022.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let USERNAME: String = "hirush@gmail.com"
    let PASSWORD: String = "123456"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLoginOnclick(_ sender: Any) {
        
        if(usernameTextField.text != ""){
            if(passwordTextField.text != ""){
                if(usernameTextField.text == USERNAME){
                    if(passwordTextField.text == PASSWORD){
                        // User is validated
                        //Do something now here
                        
                        print("User Validated")
                        if let window = UIApplication.shared.windows.first{

                            let mainSB = UIStoryboard(name: "Main", bundle: nil)

                            if let RootVc = mainSB.instantiateViewController(withIdentifier: "homeTabBarController") as? HomeTabBarController{


                                let initialViewController = mainSB.instantiateViewController(withIdentifier: "homeTabBarController") as! HomeTabBarController
                                let navController = UINavigationController(rootViewController: initialViewController)
                                window.rootViewController = navController

                                window.rootViewController = RootVc
                                window.makeKeyAndVisible()

                            }
                        }
                        
                    }else{
                        //Passowrd is wrong pop up message
                        let alert = UIAlertController(title: "Error", message: "Password is wrong!",         preferredStyle: UIAlertController.Style.alert)
                        
                        alert.addAction(UIAlertAction(title: "Try again", style: UIAlertAction.Style.default, handler: { _ in
                            //Cancel Action
                        }))
                        
                        self.present(alert, animated: true, completion: nil)
                    }
                }else{
                    //Username is wrong pop up message
                    let alert = UIAlertController(title: "Error", message: "Username is wrong!",         preferredStyle: UIAlertController.Style.alert)
                    
                    alert.addAction(UIAlertAction(title: "Try again", style: UIAlertAction.Style.default, handler: { _ in
                        //Cancel Action
                    }))
                    
                    self.present(alert, animated: true, completion: nil)
                }
            }else{
                //Display error pop up message for password null field
                let alert = UIAlertController(title: "Error", message: "Please enter password!",         preferredStyle: UIAlertController.Style.alert)
                
                alert.addAction(UIAlertAction(title: "Try again", style: UIAlertAction.Style.default, handler: { _ in
                    //Cancel Action
                }))
                
                self.present(alert, animated: true, completion: nil)
            }
        }else{
            //Display error pop up message for username null field
            let alert = UIAlertController(title: "Error", message: "Please enter username!",         preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "Try again", style: UIAlertAction.Style.default, handler: { _ in
                //Cancel Action
            }))
            
            self.present(alert, animated: true, completion: nil)
        }
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
