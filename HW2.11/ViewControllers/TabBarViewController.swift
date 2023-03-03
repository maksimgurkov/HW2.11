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
        
        guard let personsListVC = viewControllers?.first as? PersonsListTableViewController else { return }
        guard let generalListVC = viewControllers?.last as? GeneralListTableViewController else { return }
        
        personsListVC.persons = persons
        generalListVC.persons = persons
        
    }
    

}
