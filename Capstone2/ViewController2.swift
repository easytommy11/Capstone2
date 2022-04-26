//
//  ViewController2.swift
//  Capstone2
//
//  Created by Tomiwa Babalola on 4/25/22.
//

import AVKit
import AVFoundation
import UIKit


class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "train", ofType: "m4v")!))
        
        let vc = AVPlayerViewController()
        vc.player = player
        present(vc, animated: true)
    }
    
}

