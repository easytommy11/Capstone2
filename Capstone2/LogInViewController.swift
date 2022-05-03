//
//  LogInViewController.swift
//  SeniorCapstone2
//
//  Created by Jeffrey Voltaire on 2/28/22.
//

import UIKit

import Firebase

class LogInViewController: UIViewController {

    @IBOutlet weak var enterEmail: UITextField!
    @IBOutlet weak var enterPassword: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    let loginToList = "LoginToList"
    var handle: AuthStateDidChangeListenerHandle?

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    func setUpElements() {
            Utilities.styleTextField(enterEmail)
            Utilities.styleTextField(enterPassword)
            Utilities.styleFilledButton(loginButton)
    }
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      //navigationController?.setNavigationBarHidden(true, animated: false)
      handle = Auth.auth().addStateDidChangeListener { _, user in
        if user == nil {
          //self.navigationController?.popToRootViewController(animated: true)
        } else {
          self.performSegue(withIdentifier: self.loginToList, sender: nil)
          self.enterEmail.text = nil
          self.enterPassword.text = nil
        }
      }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
      super.viewWillDisappear(animated)
      navigationController?.setNavigationBarHidden(false, animated: false)
    }

    override func viewDidDisappear(_ animated: Bool) {
      super.viewDidDisappear(animated)
      guard let handle = handle else { return }
      Auth.auth().removeStateDidChangeListener(handle)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func loginTapped(_ sender: Any) {
        guard
          let email = enterEmail.text,
          let password = enterPassword.text,
          !email.isEmpty,
          !password.isEmpty
        else { return }

        Auth.auth().signIn(withEmail: email, password: password) { user, error in
          if let error = error, user == nil {
            let alert = UIAlertController(
              title: "Sign In Failed",
              message: error.localizedDescription,
              preferredStyle: .alert)

            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true, completion: nil)
          }
        }
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        Auth.auth().sendPasswordReset(withEmail: enterEmail.text!){ (error) in
            if error == nil {
                print("SENT...!")
            }else{
                print("FAILED - \(String(describing: error?.localizedDescription))")
            }
        }
    }

}
