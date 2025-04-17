//
//  ThreeViewController.swift
//  
//
//  Created by Katie Wendt on 4/2/25.
//

import UIKit
import AVFoundation

class ThreeViewController: UIViewController {
    var audioPlayer: AVAudioPlayer?
    
    func playSound(for quote: String){
        let filename = "\(quote)_Sound"
        
        guard let url = Bundle.main.url(forResource: filename, withExtension: "mp3")
        else{
            print("Could not find sound file: \(filename).wav")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        } catch {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func quote1BTN(_ sender: UIButton) {
        playSound(for: "WellYes")
    }
    
    @IBAction func quote2BTN(_ sender: UIButton) {
        playSound(for: "VeryDM")
    }
    
    @IBAction func quote3BTN(_ sender: UIButton) {
        playSound(for: "Fatality")
    }
    
    @IBAction func quote4BTN(_ sender: UIButton) {
        playSound(for: "Answer")
    }
    
    
    @IBAction func quote5BTN(_ sender: UIButton) {
        playSound(for: "HeyDiva")
    }
    
    @IBAction func quote6BTN(_ sender: UIButton) {
        playSound(for: "Goodbye")
    }
    
    
    
    

}
