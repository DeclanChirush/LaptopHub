//
//  LandingViewController.swift
//  Assigment3
//
//  Created by Interactive Media on 4/24/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    @IBOutlet weak var btn_guestLogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btn_checkGuestLogin(_ sender: Any) {
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
