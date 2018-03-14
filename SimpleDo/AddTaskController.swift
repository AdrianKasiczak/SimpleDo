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
        
        addTaskTextField.becomeFirstResponder()
    }
    let addTaskLabel: UILabel = {
        let label = UILabel()
        label.text = "What do you want to do?"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Helvetica", size: 17)
        label.textColor = .black
        return label
    }()
    
    let addTaskTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.attributedPlaceholder = NSAttributedString(string: "Type Here...",
                                                             attributes: [NSAttributedStringKey.foregroundColor: UIColor(red:255/255, green:255/255, blue:255/255, alpha: 0.5)])
        textField.font = UIFont(name: "Helvetica", size: 24)
        textField.textColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
        textField.backgroundColor = .none
        return textField
    }()
    
    let doneButton: UIButton = {
       let btn = UIButton()
        btn.backgroundColor = .white
        btn.setTitle("Done", for: .normal)
        btn.setTitleColor(UIColor(red: 80/255, green: 200/255, blue: 120/255, alpha: 1), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    let cancelButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .white
        btn.setTitle("Cancel", for: .normal)
        btn.setTitleColor(UIColor(red: 80/255, green: 200/255, blue: 120/255, alpha: 1), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(cancelButtonAction), for: .touchUpInside)
        btn.layer.cornerRadius = 5
        return btn
    }()
    
    
    @objc func cancelButtonAction() {
        dismiss(animated: true, completion: nil)
        addTaskTextField.resignFirstResponder()
    }
    
    func setupViews() {
        view.addSubview(addTaskLabel)
        view.addSubview(addTaskTextField)
        view.addSubview(doneButton)
        view.addSubview(cancelButton)
    }
    
    func setupContraints() {
        addTaskLabel.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        addTaskLabel.heightAnchor.constraint(equalToConstant: 25).isActive = true
        addTaskLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 25).isActive = true
        addTaskLabel.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 75).isActive = true
        
        addTaskTextField.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        addTaskTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        addTaskTextField.topAnchor.constraint(equalTo: addTaskLabel.bottomAnchor, constant: 10).isActive = true
        addTaskTextField.centerXAnchor.constraint(equalTo: addTaskLabel.centerXAnchor).isActive = true
        
        doneButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7).isActive = true
        doneButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        doneButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        doneButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        cancelButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        cancelButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}


extension AddTaskController: UITextViewDelegate {
    func textViewDidChangeSelection(_ textView: UITextView) {
        
    }
}
