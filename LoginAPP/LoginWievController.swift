//
//  ViewController.swift
//  LoginAPP
//
//  Created by Konstantin Durkin on 24.01.2023.
//

import UIKit

    class LoginWievController: UIViewController {
    
    @IBOutlet weak var UserNameTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = user
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    
    @IBAction func LogInPressed(_ sender: Any) {
        guard UserNameTextField.text == user, PasswordTextField.text == password else {
            showAlert(
                title: "Invalid your Login and Password",
                message: "Please, enter your Login and Password",
                textField: PasswordTextField
            )
            return
        }
    }
        @IBAction func ForRegisterData(_ sender: Any) {
             showAlert(title: ":)", message: "Your name is \(user)")
        }
        
        @IBAction func ForRegisterData2(_ sender: Any) {
            showAlert(title:":)" , message: "Your password is \(password)")
        }
        @IBAction func unwindSegue(segue: UIStoryboardSegue) {
            UserNameTextField.text = ""
            PasswordTextField.text = ""
        }
            
        
    
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
    }
    
}


