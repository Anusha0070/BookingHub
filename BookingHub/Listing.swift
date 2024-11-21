//
//  Listing.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/18/24.
//

import UIKit

class Listing: UIViewController {

    @IBOutlet weak var customTableView: UITableView!
    
    //array of listings
    var lists : [Lists] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loadListingsData()
        
        customTableView.dataSource = self
    }

}
extension Listing {
    func loadListingsData(){
        let listing1 = Lists(name: "Moss Beach, CA", price: "$3400 night")
        lists.append(listing1)
        let listing2 = Lists(name: "Daly City, CA", price: "$4400 night")
        lists.append(listing2)
        let listing3 = Lists(name: "Half Moon Bay, CA", price: "$2400 night")
        lists.append(listing3)
        let listing4 = Lists(name: "Santa Cruz, CA", price: "$3000 night")
        lists.append(listing4)
        let listing5 = Lists(name: "Pacifica, CA", price: "$4000 night")
        lists.append(listing5)
    }
}


extension Listing: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as? CustomCell else { return UITableViewCell() }
        
        let lists = lists[indexPath.row]
        cell.titleLabel.text = lists.name
        cell.price.text = lists.price
        return cell
    }
    
    
}
