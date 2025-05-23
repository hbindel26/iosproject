//
//  FourViewController.swift
//  
//
//  Created by Katie Wendt on 4/2/25.
//

import UIKit
import AVFoundation

class FourViewController: UIViewController {
var audioPlayer: AVAudioPlayer?

    func playSound(for cartoon: String){
        let filename = "\(cartoon)_Sound"
        guard let url = Bundle.main.url(forResource:filename, withExtension: "mp3") else {
            print("Could not find sound file: \(filename).mp3")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        }catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func carhornSound(_ sender: Any) {
        playSound(for: "carhorn")
    }
    @IBAction func dundunSound(_ sender: Any) {
        playSound(for: "dundun")
    }
    @IBAction func prowlerSound(_ sender: Any) {
        playSound(for: "prowler")
    }
    @IBAction func snoreSound(_ sender: Any) {
        playSound(for: "snore")
    }
    
    @IBAction func spongebobSound(_ sender: Any) {
        playSound(for: "spongebobfail")
    }
    @IBAction func wowSound(_ sender: Any) {
        playSound(for: "wow")
    }
    
}
