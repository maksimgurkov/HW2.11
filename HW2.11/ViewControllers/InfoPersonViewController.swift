//
//  InfoPersonViewController.swift
//  HW2.11
//
//  Created by Максим Гурков on 03.03.2023.
//

import UIKit

class InfoPersonViewController: UIViewController {
    
    // MARK: - Public properties
    var person: Person!
    
    // MARK: - IBOutlets
    @IBOutlet weak var phonePersonLabel: UILabel!
    @IBOutlet weak var emailPersonLabel: UILabel!
    
    // MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fulName
        phonePersonLabel.text = "Phone: \(person.phone)"
        emailPersonLabel.text = "Email: \(person.email)"
        
    }
    

}
