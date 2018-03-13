//
//  AddTaskController.swift
//  SimpleDo
//
//  Created by Adrian Kasiczak on 13/03/2018.
//  Copyright © 2018 Adrian Kasiczak. All rights reserved.
//

import UIKit

class AddTaskController: UIViewController {

    let emerald = UIColor(red: 80/255, green: 200/255, blue: 120/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = emerald
    }
    
    let addTaskLabel: UILabel = {
        let label = UILabel()
        label.text = "What do you want to do?"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let addTaskTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Type here..."
        return textView
    }()
    
    func setupViews() {
        
    }
    
    func setupContraints() {
        
    }
}
