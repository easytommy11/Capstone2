//
//  ProfileViewController.swift
//  Capstone2
//
//  Created by Tomiwa Babalola on 4/13/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet var profile: UIImageView!
    
    
    @IBOutlet var avatar4: UIButton!
    @IBOutlet var avatar3: UIButton!
    @IBOutlet var avatar2: UIButton!
    @IBOutlet var avatar1: UIButton!
    
    
    @IBAction func a1(_ sender: Any) {
        profile.image = avatar1.backgroundImage(for: .normal)
    }
    @IBAction func a2(_ sender: Any) {
    }
    @IBAction func a3(_ sender: Any) {
    }
    @IBAction func a4(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
