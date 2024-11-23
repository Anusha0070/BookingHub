//
//  CustomCell.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/18/24.
//

import UIKit

class CustomCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var hotelImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
