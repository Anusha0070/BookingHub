//
//  Login.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/17/24.
//

import UIKit

class LoginPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func forgotButton(_ sender: Any) {
        
//        let forgotPasswors = storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordPage") as? ForgotPasswordPage
//        
//        guard let forgotPasswors else { return }
//        
//        navigationController?.pushViewController(forgotPasswors, animated: true)
        pushView(viewController: ForgotPasswordPage(), identifier: "ForgotPasswordPage")
    }
    
    
    
}
