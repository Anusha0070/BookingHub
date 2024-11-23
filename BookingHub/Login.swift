//
//  Login.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/17/24.
//

import UIKit

class LoginPage: UIViewController {

    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func forgotButton(_ sender: Any) {
    
        let forgotPassword = pushView(viewController: ForgotPasswordPage(), identifier: "ForgotPasswordPage")
        
        navigationController?.pushViewController(forgotPassword, animated: true)
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        let tabController = pushView(viewController: UITabBarController(), identifier: "TabBarController")
        
        if let viewControllers = tabController.viewControllers,
               let profilePage = viewControllers[1] as? ProfilePage {
            
            // Access properties in ProfilePage
            profilePage.receivedUsername = userName.text == "" ? "Firstname" : userName.text
            profilePage.receivedPassword = password.text == "" ? "Lastname" : password.text
        }
        
        navigationController?.pushViewController(tabController, animated: true)

    }
    
}
