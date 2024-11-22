//
//  Forgot.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/17/24.
//

import UIKit

class ForgotPasswordPage: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func passEmailConfirmation(_ sender: Any) {
        
        let confirmEmail = pushView(viewController: ConfirmEmail(), identifier: "ConfirmEmail")
        
        navigationController?.pushViewController(confirmEmail, animated: true)
        
//        confirmEmail.emailConfirmationText.text = email.text
        confirmEmail.receivedEmail = email.text ?? "Default"
        
    }
    
    

}
