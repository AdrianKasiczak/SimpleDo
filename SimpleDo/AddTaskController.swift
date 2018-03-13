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
        setupViews()
        setupContraints()
    }
    
    let addTaskLabel: UILabel = {
        let label = UILabel()
        label.text = "What do you want to do?"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Helvetica", size: 17)
        label.textColor = .black
        return label
    }()
    
    let addTaskTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Type here..."
        textView.font = UIFont(name: "Helvetica", size: 24)
        textView.textColor = .white
        textView.backgroundColor = .none
        textView.isEditable = true
        return textView
    }()
    
    let doneButton: UIButton = {
       let btn = UIButton()
        
        return btn
    }()
    
    let cancelButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .white
        btn.setTitle("Cancel", for: .normal)
        btn.setTitleColor(UIColor(red: 80/255, green: 200/255, blue: 120/255, alpha: 1), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(cancelButtonAction), for: .touchUpInside)
        return btn
    }()
    
    
    @objc func cancelButtonAction() {
        dismiss(animated: true, completion: nil)
    }
    
    func setupViews() {
        view.addSubview(addTaskLabel)
        view.addSubview(addTaskTextView)
        view.addSubview(doneButton)
        view.addSubview(cancelButton)
    }
    
    func setupContraints() {
        addTaskLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        addTaskLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        addTaskLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 25).isActive = true
        addTaskLabel.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        
        addTaskTextView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        addTaskTextView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addTaskTextView.topAnchor.constraint(equalTo: addTaskLabel.bottomAnchor, constant: 10).isActive = true
        addTaskTextView.centerXAnchor.constraint(equalTo: addTaskLabel.centerXAnchor).isActive = true
        
//        doneButton.widthAnchor
//        doneButton.widthAnchor
//        doneButton.widthAnchor
//        doneButton.widthAnchor
        
        cancelButton.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        cancelButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
