//
//  PersonsListTableViewController.swift
//  HW2.11
//
//  Created by Максим Гурков on 03.03.2023.
//

import UIKit

class PersonsListTableViewController: UITableViewController {
    
    // MARK: - Public properties
    var persons: [Person] = []
    
    // MARK: - Override functions
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Persons List"
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personInfoVC = segue.destination as? InfoPersonViewController else { return }
        guard let index = tableView.indexPathForSelectedRow else { return }
        
        personInfoVC.person = persons[index.row]
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        content.text = person.fulName
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
 
