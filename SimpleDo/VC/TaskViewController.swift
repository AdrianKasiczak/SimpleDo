//
//  TaskViewController.swift
//  SimpleDo
//
//  Created by Adrian Kasiczak on 07/03/2018.
//  Copyright © 2018 Adrian Kasiczak. All rights reserved.
//

import UIKit
import CoreData

class TaskViewController: UITableViewController {
    
    
    var tasks: [ToDo] = []
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        navigationItem.title = "Inbox"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTaskController))
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //Get Data from CoreData
        getFetchedData()
        
        //Reload TableView
        tableView.reloadData()
    }
    
    @objc func addTaskController() {
        present(AddTaskController(), animated: true, completion: nil)
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        let task = tasks[indexPath.row]
        
        cell.textLabel?.text = task.title
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completion) in
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let task = self.tasks[indexPath.row]
            completion(true)
            context.delete(task)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }
        
        
        
        action.image = #imageLiteral(resourceName: "trash")
        action.backgroundColor = .red
        
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let action = UIContextualAction(style: .destructive, title: "Complete") { (action, view, completion) in
            let task = self.tasks[indexPath.row]
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            completion(true)
            
            context.delete(task)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }
        action.image = #imageLiteral(resourceName: "check")
        action.backgroundColor = .green
        return UISwipeActionsConfiguration(actions: [action])
    }
    
    func getFetchedData() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        do {
            tasks = try context.fetch(ToDo.fetchRequest())
        } catch {
            print("Fetching Error")
        }
    }
    
}















