//
//  contactsView.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 10/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import Foundation
import UIKit

extension homeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count : Int?
        if tableView == self.contactsView {
            count = contactArray[section].count
        }
        return count!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell : UITableViewCell?
        if tableView == self.contactsView {
            cell = tableView.dequeueReusableCell(withIdentifier: "Contacts", for: indexPath)
            cell!.textLabel?.text = "\(contactArray[indexPath.section][indexPath.row])"
        }
        return cell!
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        var numberOfSections: Int?
        if tableView == self.contactsView {
            numberOfSections = contactArray.count
        }
        return numberOfSections!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dump("\(indexPath.section).\(indexPath.row)")
    }
    
    func addContactsView() {
        contactsView = UITableView(frame: CGRect(x: 0, y: barHeight + (style.dashboardHeight * 2), width: displayWidth, height: displayHeight - barHeight - (style.dashboardHeight * 2)))
        contactsView.register(UITableViewCell.self, forCellReuseIdentifier: "Contacts")
        contactsView.dataSource = self as UITableViewDataSource
        contactsView.delegate = self as UITableViewDelegate
        
        self.view.addSubview(contactsView)
    }
}
