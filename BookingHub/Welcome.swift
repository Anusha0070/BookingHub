//
//  Welcome.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/17/24.
//

import UIKit

class WelcomePage: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupButton(_ sender: Any) {
        
//        let signup = storyboard?.instantiateViewController(withIdentifier: "SignupPage") as? SignupPage
//        
//        guard let signup else { return }
//        
//        navigationController?.pushViewController(signup, animated: true)
        
        pushView(viewController: SignupPage(), identifier: "SignupPage")
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
//        let login = storyboard?.instantiateViewController(withIdentifier: "LoginPage") as? LoginPage
//        
//        guard let login else { return }
//        
//        navigationController?.pushViewController(login, animated: true)
        
        pushView(viewController: LoginPage(), identifier: "LoginPage")
    }
    
}

extension UIViewController {
    func pushView<T: UIViewController>(viewController: T, identifier: String){
        let x = storyboard?.instantiateViewController(withIdentifier: identifier) as? T
        guard let x else { return }
        navigationController?.pushViewController(x, animated: true)
    }
}
