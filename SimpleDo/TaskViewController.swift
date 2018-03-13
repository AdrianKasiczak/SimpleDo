//
//  TaskViewController.swift
//  SimpleDo
//
//  Created by Adrian Kasiczak on 07/03/2018.
//  Copyright © 2018 Adrian Kasiczak. All rights reserved.
//

import UIKit

class TaskViewController: UITableViewController {

    let cellID = "cellID"
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        navigationItem.title = "Inbox"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTaskController))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
    }
    
    @objc func addTaskController() {
        present(AddTaskController(), animated: true, completion: nil)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        return cell
    }
    
}
