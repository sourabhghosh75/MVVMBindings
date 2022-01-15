//
//  LoginViewController.swift
//  MVVMBindings
//
//  Created by Sourabh Ghosh on 15/01/22.
//

import UIKit

class LoginViewController: UIViewController {

    private var loginViewModel = LoginViewModel()
    
    @IBOutlet weak var usernameTxt: BindingTextField!{
        didSet {
            usernameTxt.bind { [weak self] text  in
                self?.loginViewModel.username = text
               
            }
        }
    }
    
    @IBOutlet weak var passwordTxt: BindingTextField!{
        didSet {
            passwordTxt.bind { [weak self] text  in
               
                self?.loginViewModel.password = text
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pressedLogin(_ sender: UIButton) {
        
        
        print(loginViewModel.username)
        print(loginViewModel.password)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
