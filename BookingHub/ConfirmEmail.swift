//
//  ConfirmEmail.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/21/24.
//

import UIKit

class ConfirmEmail: UIViewController {

    @IBOutlet weak var emailConfirmationText: UILabel!
    
    var receivedEmail: String = "Not received any text yet"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        emailConfirmationText.text = "We have sent a link to the verified email address: \(receivedEmail) for resetting the password. This link will be valid only for 24 hours."
        
    }


}
