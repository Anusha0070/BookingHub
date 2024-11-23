//
//  ShowDetails.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/22/24.
//

import UIKit

class ShowDetails: UIViewController {

    var listingDetails : Lists?
    
    @IBOutlet weak var listingImage: UIImageView!
    
    
    @IBOutlet weak var listingTitle: UILabel!
    
    
    @IBOutlet weak var listingPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        print(listingDetails?.name ?? "No value")
        
        listingImage.image = listingDetails?.profileImage
        
        listingTitle.text = listingDetails?.name
        
        listingPrice.text = listingDetails?.price
    }


}
