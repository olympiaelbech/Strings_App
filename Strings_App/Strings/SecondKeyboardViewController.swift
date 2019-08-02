//
//  keyboardViewController.swift
//  Strings
//
//  Created by Apple on 8/2/19.
//  Copyright © 2019 Olympia Elbech. All rights reserved.
//

import UIKit

class SecondKeyboardViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var textfieldOne: UITextField!
    
    @IBOutlet weak var textfieldTwo: UITextField!
    
    @IBOutlet weak var textfieldThree: UITextField!
    
    @IBOutlet weak var textfieldFour: UITextField!
    
   override func viewDidLoad() {
        super.viewDidLoad()
        self.textfieldOne.delegate = self
        self.textfieldTwo.delegate = self
        self.textfieldThree.delegate = self
        self.textfieldFour.delegate = self
    }
    
    //Hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //Press return key hides keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return(true)
    }
    
}
