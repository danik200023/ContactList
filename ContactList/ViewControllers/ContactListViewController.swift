//
//  ViewController.swift
//  ContactList
//
//  Created by Данила Умнов on 06.08.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {

    var contacts: [Contact]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        if let detailcVC = segue.destination as? DetailsViewController {
            detailcVC.contact = contacts[indexPath.row]
        }
    }
}

// MARK: - UITableviewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.fullname
        cell.contentConfiguration = content
        return cell
    }
}
