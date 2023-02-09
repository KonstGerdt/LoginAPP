//
//  SecondViewController.swift
//  LoginAPP
//
//  Created by Konstantin Durkin on 24.01.2023.
//

import UIKit

    class WelcomeViewController: UIViewController {
        
        @IBOutlet weak var WelcomeLabel: UILabel!
        
        var user:User!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WelcomeLabel.text = "Welcome, \(user.person.fullName)!"
       
    }
           
}
    


