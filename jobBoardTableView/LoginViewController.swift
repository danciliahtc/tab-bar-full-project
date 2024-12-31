//
//  ViewController.swift
//  jobBoardTableView
//
//  Created by Dancilia Harmon   on 12/26/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        if userNameTF.text == "admin" && passwordTF.text == "admin" {
            performSegue(withIdentifier: "navigateToJobBoardViewController", sender: nil)
        } else {
            let alert = UIAlertController(title: "Invalid Login", message: "Username or password is incorrect", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true, completion: nil)
        }
        
    }
    
}
