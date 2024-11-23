//
//  Listing.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/18/24.
//

import UIKit

class Listing: UIViewController {

    @IBOutlet weak var customTableView: UITableView!
    
    @IBOutlet weak var searchBar: UITextField!
    //array of listings
    var lists : [Lists] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadListingsData()
        customTableView.dataSource = self
        customTableView.delegate = self
        
        
        let imageView = UIImageView(frame: CGRect(x: 10, y: 0, width: 20, height: 20))
        imageView.image = UIImage(systemName: "magnifyingglass") // Use SF Symbols or your custom image
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .darkGray

        // Add padding to the image
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 20))
        paddingView.addSubview(imageView)

        // Set the image as the left view
        searchBar.leftView = paddingView
        searchBar.leftViewMode = .always // Always show the icon

        // Customize the text field appearance
        searchBar.borderStyle = .roundedRect
        searchBar.placeholder = "Where to?"
    }

}
extension Listing {
    func loadListingsData(){
        lists = [
            Lists(name: "Moss Beach, CA", price: "$3400 night", profileImage: UIImage(imageLiteralResourceName: "hotel1")),
            Lists(name: "Daly City, CA", price: "$4400 night", profileImage: UIImage(imageLiteralResourceName: "hotel2")),
            Lists(name: "Half Moon Bay, CA", price: "$400 night", profileImage: UIImage(imageLiteralResourceName: "hotel3")),
            Lists(name: "Santa Cruz, CA", price: "$6400 night", profileImage: UIImage(imageLiteralResourceName: "hotel4")),
            Lists(name: "Pacifica, CA", price: "$1400 night", profileImage: UIImage(imageLiteralResourceName: "hotel5")),
            Lists(name: "Kelseycille, CA", price: "$2300 night", profileImage: UIImage(imageLiteralResourceName: "hotel2")),
            Lists(name: "Clearlake, CA", price: "$1470 night", profileImage: UIImage(imageLiteralResourceName: "hotel1")),
            Lists(name: "Carnelian Bay, CA", price: "$1990 night", profileImage: UIImage(imageLiteralResourceName: "hotel5")),
            Lists(name: "Lower Lake, CA", price: "$2340 night", profileImage: UIImage(imageLiteralResourceName: "hotel3")),
            Lists(name: "Tahoe City, CA", price: "$1290 night", profileImage: UIImage(imageLiteralResourceName: "hotel5")),
            Lists(name: "Santa Cruz, CA", price: "$3990 night", profileImage: UIImage(imageLiteralResourceName: "hotel4")),
            Lists(name: "Pacifica, CA", price: "$2300 night", profileImage: UIImage(imageLiteralResourceName: "hotel2")),
            Lists(name: "Pacifica, CA", price: "$4400 night", profileImage: UIImage(imageLiteralResourceName: "hotel1")),
            Lists(name: "Pacifica, CA", price: "$2900 night", profileImage: UIImage(imageLiteralResourceName: "hotel3")),
            Lists(name: "Pacifica, CA", price: "$2990 night", profileImage: UIImage(imageLiteralResourceName: "hotel5")),
        ]
    }
}


extension Listing: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomCell else { return UITableViewCell() }
        
        let lists = lists[indexPath.row]
        cell.titleLabel.text = lists.name
        cell.price.text = lists.price
        cell.hotelImage.image = lists.profileImage
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = lists[indexPath.row]
        
        navigateToNewScreen(screen : selectedRow)
        
        print(selectedRow)
    }
    
    func navigateToNewScreen(screen: Lists?){
        guard let newScreen = self.storyboard?.instantiateViewController(withIdentifier: "ShowDetails") as? ShowDetails else{
            return
        }
        
        newScreen.listingDetails = screen
        
        self.navigationController?.pushViewController(newScreen, animated: true)
    }
    
}
