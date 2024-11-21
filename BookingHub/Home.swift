//
//  Home.swift
//  BookingHub
//
//  Created by Anusha Raju on 11/18/24.
//

import UIKit

class HomePage: UIViewController {

    override func viewDidLoad() {
//        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let redButton = UIButton()
        redButton.setTitle("Red", for: .normal)
        redButton.backgroundColor = .red
        view.addSubview(redButton)
        redButton.frame = CGRect(x: 150, y: 200, width: 100, height: 50)
        redButton.layer.cornerRadius = 10
        redButton.addTarget(self, action: #selector(buttonAction),  for: .touchUpInside )
        redButton.layer.borderColor = UIColor.black.cgColor
        redButton.layer.borderWidth = 2
        
        let blueButton = UIButton()
        blueButton.setTitle("Blue", for: .normal)
        blueButton.backgroundColor = .blue
        view.addSubview(blueButton)
        blueButton.frame = CGRect(x: 150, y: 400, width: 100, height: 50)
        blueButton.layer.cornerRadius = 10
        blueButton.addTarget(self, action: #selector(buttonAction),  for: .touchUpInside )
        blueButton.layer.borderColor = UIColor.black.cgColor
        blueButton.layer.borderWidth = 2
        
        let greenButton = UIButton()
        greenButton.setTitle("Green", for: .normal)
        greenButton.backgroundColor = .green
        view.addSubview(greenButton)
        greenButton.frame = CGRect(x: 150, y: 600, width: 100, height: 50)
        greenButton.layer.cornerRadius = 10
        greenButton.addTarget(self, action: #selector(buttonAction),  for: .touchUpInside )
        greenButton.layer.borderColor = UIColor.black.cgColor
        greenButton.layer.borderWidth = 2
        
    }
    
    @objc func buttonAction(button: UIButton) {
        
        switch button.backgroundColor {
        case .red:
            print("Red button pressed")
            view.backgroundColor = .red
        case .blue:
            print("Blue button pressed")
            view.backgroundColor = .blue
        case .green:
            print("Green button pressed")
            view.backgroundColor = .green
        default:
            break
        }
    }
    
}

