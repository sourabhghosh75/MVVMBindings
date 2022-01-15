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
                self?.loginViewModel.username.value = text
               
            }
        }
    }
    
    @IBOutlet weak var passwordTxt: BindingTextField!{
        didSet {
            passwordTxt.bind { [weak self] text  in
               
                self?.loginViewModel.password.value = text
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginViewModel.username.bind {[weak self] text in
            
            self?.usernameTxt.text = text
        }
        
        loginViewModel.password.bind {[weak self] text in
            
            self?.passwordTxt.text = text
        }
    }
    

    @IBAction func pressedLogin(_ sender: UIButton) {
        
        
        print(loginViewModel.username.value)
        print(loginViewModel.password.value)
    }
    
    
    @IBAction func pressedLoginInfo(_ sender: UIButton) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { [weak self] in
            
            self?.loginViewModel.username.value = "Pran"
            self?.loginViewModel.password.value = "password"
        }
        
        
        
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
