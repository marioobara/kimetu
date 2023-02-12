//
//  ViewController.swift
//  sampleQuiz
//
//  Created by 小原万里雄 on 2022/04/13.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    private var player: AVAudioPlayer!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let asset = NSDataAsset(name: "sound")
        player = try! AVAudioPlayer(data: asset!.data, fileTypeHint: "mp3")
        // Do any additional setup after loading the view.
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.black.cgColor
    }

    @IBAction func startButton(_ sender: Any) {
        player.play()
    }
    
}

