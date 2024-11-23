//
//  Profile.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/17/24.
//

import UIKit

class ProfilePage: UIViewController {

    
    @IBOutlet weak var accountImg: UIImageView!
    
    
    @IBOutlet weak var userName: UILabel!
    
    var receivedUsername : String? = "FirstName"
    var receivedPassword : String? = "LastName"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        accountImg.layer.cornerRadius = accountImg.frame.size.width / 2
        accountImg.clipsToBounds = true
        
        userName.text = (receivedUsername ?? "Firstname" ) + " " + (receivedPassword ?? "LastName")
        
        
    }


}
