//
//  Person.swift
//  HW2.11
//
//  Created by Максим Гурков on 03.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fulName: String {
        "\(name) \(surname)"
    }
        
    static func dataPersone() -> [Person] {

        var persons: [Person] = []

        let names = DataManager.data.names.shuffled()
        let surnames = DataManager.data.surNames.shuffled()
        let phones = DataManager.data.phones.shuffled()
        let emails = DataManager.data.emails.shuffled()

        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons

    }
}
