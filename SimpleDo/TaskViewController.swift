//
//  TaskViewController.swift
//  SimpleDo
//
//  Created by Adrian Kasiczak on 07/03/2018.
//  Copyright © 2018 Adrian Kasiczak. All rights reserved.
//

import UIKit

class TaskViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        navigationItem.title = "Inbox"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTaskController))
    }
    
    @objc func addTaskController() {
        present(AddTaskController(), animated: true, completion: nil)
    }
    
}
