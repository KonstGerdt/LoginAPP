//
//  UserBioViewController.swift
//  LoginAPP
//
//  Created by Konstantin Durkin on 30.01.2023.
//

import UIKit

class UserBioViewController: UIViewController {

    
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(user.person.fullName) Bio"
        userBioTextView.text = user.person.bio
    }
}
