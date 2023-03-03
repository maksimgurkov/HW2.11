//
//  TabBarViewController.swift
//  HW2.11
//
//  Created by Максим Гурков on 03.03.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    // MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Persons List"
        passingViewController()
    }
    
    // MARK: - Private Functions
    private func passingViewController() {
        let persons = Person.dataPersons()
        
        let personsListVC = viewControllers?.first as! PersonsListTableViewController
        let generalListVC = viewControllers?.last as! GeneralListTableViewController
        
        personsListVC.persons = persons
        generalListVC.persons = persons
    }
    

}
