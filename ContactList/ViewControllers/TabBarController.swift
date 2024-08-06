//
//  TabBarController.swift
//  ContactList
//
//  Created by Данила Умнов on 06.08.2024.
//

import UIKit

final class TabBarController: UITabBarController {

    private let contacts = Contact.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers?.forEach { viewController in
            let navigationVC = viewController as? UINavigationController
            if let contactListVC = navigationVC?.topViewController as? ContactListViewController {
                contactListVC.contacts = contacts
            } else if let sectionListVC = navigationVC?.topViewController as? SectionContactListViewController {
                sectionListVC.contacts = contacts
            }
        }
    }
}
