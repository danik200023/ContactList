//
//  SectionContactListViewController.swift
//  ContactList
//
//  Created by Данила Умнов on 06.08.2024.
//

import UIKit

final class SectionContactListViewController: UITableViewController {
    
    var contacts: [Contact]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.allowsSelection = false
    }
    
}

// MARK: - UITableViewDataSource
extension SectionContactListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullname
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionContactCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = contacts[indexPath.section].phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = contacts[indexPath.section].email
            content.image = UIImage(systemName: "tray")
        }
        cell.contentConfiguration = content
        return cell
    }
}
