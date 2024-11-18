//
//  Signup.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/17/24.
//
import UIKit

class SignupPage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButton(_ sender: Any) {
//        let login = storyboard?.instantiateViewController(withIdentifier: "LoginPage") as? LoginPage
//        
//        guard let login else { return }
//        
//        navigationController?.pushViewController(login, animated: true)
        pushView(viewController: LoginPage() , identifier: "LoginPage")
    }
    
}
