//
//  SettingsViewController.swift
//  SeniorCapstone2
//
//  Created by Tomiwa Babalola on 3/8/22.
//

import UIKit

class SettingsViewController: UIViewController {
    var lightOn = true
    @IBOutlet var settingScreen: UIView!
    @IBOutlet var `switch`: UISwitch!
    
 
    @IBOutlet var color: [UITextField]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func switchAction(_ sender: UISwitch) {
        lightOn.toggle()
        if lightOn {
                view.backgroundColor = .white
            color[0].textColor = .black
            color[1].textColor = .black
            color[2].textColor = .black
            color[3].textColor = .black
            color[4].textColor = .black
            color[5].textColor = .black
            color[6].textColor = .black
            }
            else {
            view.backgroundColor = .black
                color[0].textColor = .white
                color[1].textColor = .white
                color[2].textColor = .white
                color[3].textColor = .white
                color[4].textColor = .white
                color[5].textColor = .white
                color[6].textColor = .white



                


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
