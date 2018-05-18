//
//  ContactTableViewController.swift
//  Point Out! I'm in trouble
//
//  Created by MKS on 14/09/16.
//  Copyright © 2016 MKS. All rights reserved.
//

import UIKit
import AddressBookUI

class ContactTableViewController: UITableViewController {
    
    
    
    
    @IBAction func addButton(sender: AnyObject) {
    }
    
    
    
    
    @IBOutlet var menuButton: UIBarButtonItem!
    
    
    
    override func viewDidLoad() {
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = "revealToggle:"
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }

    }
    
}
