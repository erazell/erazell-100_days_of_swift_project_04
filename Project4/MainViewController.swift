//
//  MainViewController.swift
//  Project4
//
//  Created by Janusz  on 12/05/2020.
//  Copyright © 2020 Janusz . All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    
    let secondViewController = ViewController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true

      title = "Web pages"

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        secondViewController.websites.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "site", for: indexPath)
        cell.textLabel?.text = secondViewController.websites[indexPath.row]
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "view") as? ViewController{
            vc.currentWebsite = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
