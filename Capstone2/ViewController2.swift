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
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "adhd", ofType: "mp4")!))
        
        let vc = AVPlayerViewController()
        vc.player = player
        present(vc, animated: true)
    }
    
}

