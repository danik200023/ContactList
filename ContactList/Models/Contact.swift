//
//  Contacts.swift
//  ContactList
//
//  Created by Данила Умнов on 06.08.2024.
//

struct Contact {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getContacts() -> [Contact] {
        let data = DataStore()
        var contacts: [Contact] = []
        for _ in 1...10{
            contacts.append(
                Contact(
                    name: data.names.remove(at: Int.random(in: 0..<data.names.count)),
                    surname: data.surnames.remove(at: Int.random(in: 0..<data.surnames.count)),
                    phone: data.phoneNumbers.remove(at: Int.random(in: 0..<data.phoneNumbers.count)),
                    email: data.emails.remove(at: Int.random(in: 0..<data.emails.count))
                )
            )
        }
        return contacts
    }
}
