//
//  SecondViewController.swift
//  UITextFieldBug
//
//  Created by Klaas Pieter Annema on 13/07/15.
//  Copyright (c) 2015 Klaas Pieter Annema. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let customFontTextField = UITextField(frame: CGRect.zeroRect)
        customFontTextField.font = UIFont(name: "Papyrus", size: 13.0)
        customFontTextField.text = "This text jumps around."
        customFontTextField.borderStyle = .RoundedRect
        customFontTextField.delegate = self
        self.view.addSubview(customFontTextField)
        customFontTextField.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.view.addConstraint(NSLayoutConstraint(item: customFontTextField, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1.0, constant: -25.0))
        self.view.addConstraint(NSLayoutConstraint(item: customFontTextField, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1.0, constant: 0.0))

        let normalTextField = UITextField(frame: CGRect.zeroRect)
        normalTextField.font = UIFont.systemFontOfSize(13.0)
        normalTextField.text = "This text doesn't."
        normalTextField.borderStyle = .RoundedRect
        normalTextField.delegate = self
        self.view.addSubview(normalTextField)
        normalTextField.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.view.addConstraint(NSLayoutConstraint(item: normalTextField, attribute: .CenterY, relatedBy: .Equal, toItem: self.view, attribute: .CenterY, multiplier: 1.0, constant: 25.0))
        self.view.addConstraint(NSLayoutConstraint(item: normalTextField, attribute: .CenterX, relatedBy: .Equal, toItem: self.view, attribute: .CenterX, multiplier: 1.0, constant: 0.0))

        let gestureRecognizer = UITapGestureRecognizer(target: self, action: "handleTap:")
        self.view.addGestureRecognizer(gestureRecognizer)
    }


    @IBAction func handleTap(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

