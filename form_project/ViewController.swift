//
//  ViewController.swift
//  form_project
//
//  Created by SUP'Internet 15 on 10/10/2018.
//  Copyright © 2018 SUP'Internet 15. All rights reserved.
//

import UIKit

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}


class ViewController: UIViewController, UITextFieldDelegate {
    
    let image = UIImageView()
    let field1 = UITextField()
    let field2 = UITextField()
    let field3 = UITextField()
    let field4 = UITextField()
    let field5 = UITextField()
    let button = UIButton()
    let label = UILabel()
    let i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let background = UIImage(named: "background.jpg")
        let backgroundView = UIImageView(image: background)
        backgroundView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        backgroundView.contentMode = .scaleAspectFill
        
        label.frame = CGRect(x: 24, y: self.view.frame.height - 60, width: self.view.frame.width - 48, height: 36)
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
        label.font = label.font.withSize(12)
        label.numberOfLines = 2
        
        button.frame = CGRect(x: 24, y: label.frame.origin.y - 60, width: self.view.frame.width - 48, height: 36)
        button.backgroundColor = UIColor.black
        button.setTitle("Se Connecter", for: .normal)
        
        field1.frame = CGRect(x: 24, y: button.frame.origin.y - 60, width: self.view.frame.width - 48, height: 36)
        field1.backgroundColor = UIColor.lightGray
        field1.placeholder = "Password"
        field1.textColor = UIColor.white
        field1.setLeftPaddingPoints(10)
        field1.keyboardAppearance = UIKeyboardAppearance.dark;
        field1.isSecureTextEntry = true
        field1.delegate = self
        field1.tag = i - 4
        
        field2.frame = CGRect(x: 24, y: field1.frame.origin.y - 60, width: self.view.frame.width - 48, height: 36)
        field2.backgroundColor = UIColor.lightGray
        field2.placeholder = "Email"
        field4.keyboardType = UIKeyboardType.emailAddress
        field2.textColor = UIColor.white
        field2.setLeftPaddingPoints(10)
        field2.keyboardAppearance = UIKeyboardAppearance.dark;
        field2.delegate = self
        field2.tag = i - 3
        
        field3.frame = CGRect(x: 24, y: field2.frame.origin.y - 60, width: self.view.frame.width - 48, height: 36)
        field3.backgroundColor = UIColor.lightGray
        field3.placeholder = "Placeholder"
        field3.textColor = UIColor.white
        field3.setLeftPaddingPoints(10)
        field3.keyboardAppearance = UIKeyboardAppearance.dark;
        field3.delegate = self
        field3.tag = i - 2
        
        field4.frame = CGRect(x: 24, y: field3.frame.origin.y - 60, width: self.view.frame.width - 48, height: 36)
        field4.backgroundColor = UIColor.lightGray
        field4.placeholder = "Placeholder"
        field4.textColor = UIColor.white
        field4.setLeftPaddingPoints(10)
        field4.keyboardAppearance = UIKeyboardAppearance.dark;
        field4.delegate = self
        field4.tag = i - 1
        
        field5.frame = CGRect(x: 24, y: field4.frame.origin.y - 60, width: self.view.frame.width - 48, height: 36)
        field5.backgroundColor = UIColor.lightGray
        field5.placeholder = "Placeholder"
        field5.textColor = UIColor.white
        field5.setLeftPaddingPoints(10)
        field5.keyboardAppearance = UIKeyboardAppearance.dark;
        field5.delegate = self
        field5.tag = i

        image.frame = CGRect(x: 24, y: 100, width: self.view.frame.width - 48, height: self.view.frame.height / 4)
        image.image = UIImage(named: "Imperial.png")
        
        self.view.addSubview(backgroundView)
        self.view.addSubview(label)
        self.view.addSubview(button)
        self.view.addSubview(field1)
        self.view.addSubview(field2)
        self.view.addSubview(field3)
        self.view.addSubview(field4)
        self.view.addSubview(field5)
        self.view.addSubview(image)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let nextTag = textField.tag - 1
        // Try to find next responder
        let nextResponder = textField.superview?.viewWithTag(nextTag) as UIResponder!
        
        if nextResponder != nil {
            // Found next responder, so set it
            nextResponder?.becomeFirstResponder()
        } else {
            // Not found, so remove keyboard
            textField.resignFirstResponder()
        }
        
        return false
    }


}

