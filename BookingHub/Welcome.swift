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
            
        let signup = pushView(viewController: SignupPage(), identifier: "SignupPage")
        
        navigationController?.pushViewController(signup, animated: true)
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        let login = pushView(viewController: LoginPage(), identifier: "LoginPage")
        
        navigationController?.pushViewController(login, animated: true)
    }
    
}

extension UIViewController {
    func pushView<T: UIViewController>(viewController: T, identifier: String) -> T{
        let x = storyboard?.instantiateViewController(withIdentifier: identifier) as? T
        guard let x else { return UIViewController() as! T}
        
        
        return x
    }
}
