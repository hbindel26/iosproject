//
//  OneViewController.swift
//  
//
//  Created by Katie Wendt on 4/2/25.
//

import UIKit
import AVFoundation


class OneViewController: UIViewController {
var audioPlayer: AVAudioPlayer?

    
    @IBOutlet weak var elephantImage: UIImageView!
    
    
    @IBOutlet weak var dogImage: UIImageView!
    
    
    @IBOutlet weak var hyenaImage: UIImageView!
    
    
    @IBOutlet weak var catImage: UIImageView!
    
    
    @IBOutlet weak var monkeyImage: UIImageView!
    
    
    @IBOutlet weak var donkeyImage: UIImageView!
    
    func playSound(for animal: String) {
        let filename = "\(animal)_Sound"
        
        guard let url = Bundle.main.url(forResource: filename, withExtension: "wav") else {
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
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func elephantButton(_ sender: UIButton) {
        playSound(for: "Elephant")
        
    }
    
    
    @IBAction func dogButton(_ sender: UIButton) {
        playSound(for: "Dog")
    }
    
    @IBAction func hyenaButton(_ sender: Any) {
        playSound(for: "Hyena")
    }
    
    
    @IBAction func catButton(_ sender: UIButton) {
        playSound(for: "Cat")
    }
    
    
    @IBAction func monkeyButton(_ sender: UIButton) {
        playSound(for: "Monkey")
    }
    
    
    @IBAction func donkeyButton(_ sender: UIButton) {
        playSound(for: "Donkey")
    }
}



