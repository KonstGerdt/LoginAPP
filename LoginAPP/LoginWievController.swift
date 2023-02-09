//
//  ViewController.swift
//  LoginAPP
//
//  Created by Konstantin Durkin on 24.01.2023.
//

import UIKit

class LoginWievController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let user = User.getUserData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController
        else { return }
        guard let viewControllers = tabBarController.viewControllers
        else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard
                    let userInfoVC = navigationVC.topViewController as? UserInfoViewController
                else { return }
                userInfoVC.user = user
            }
        }
    }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            view.endEditing(true)
        }
        
        @IBAction func LogInPressed(_ sender: Any) {
            guard userNameTextField.text == user.login, passwordTextField.text == user.password else {
                showAlert(
                    title: "Invalid your Login and Password",
                    message: "Please, enter your Login and Password",
                    textField: passwordTextField
                )
                return
            }
        }
        @IBAction func ForRegisterData(_ sender: Any) {
            showAlert(title: ":)", message: "Your name is '\(user.login)' ")
        }
        
        @IBAction func ForRegisterData2(_ sender: Any) {
            showAlert(title:":)" , message: "Your password is '\(user.password)' ")
        }
        @IBAction func unwindSegue(segue: UIStoryboardSegue) {
            userNameTextField.text = ""
            passwordTextField.text = ""
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
    

