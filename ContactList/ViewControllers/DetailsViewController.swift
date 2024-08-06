//
//  DetailsViewController.swift
//  ContactList
//
//  Created by Данила Умнов on 06.08.2024.
//

import UIKit

final class DetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = contact.fullname
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
