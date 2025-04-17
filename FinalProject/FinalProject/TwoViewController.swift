//
//  TwoViewController.swift
//  
//
//  Created by Drew Atkins on 4/2/25.
// Drew Atkins View Controller

import UIKit
import AVFoundation
var audioPlayer: AVAudioPlayer?

class TwoViewController: UIViewController {
    func playSound(for honk: String){
        let filename = "\(honk)_sound"
        
        guard let url = Bundle.main.url(forResource: filename, withExtension: "wav")
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

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Honk1BTN(_ sender: Any) {
        playSound(for: "airHorn")

    }
    
    @IBAction func Honk2BTN(_ sender: Any) {
        playSound(for: "goofy")

    }
    
    @IBAction func Honk3BTN(_ sender: Any) {
        playSound(for: "losing")

    }
    
    @IBAction func Honk4BTN(_ sender: Any) {
        playSound(for: "oldCar")

    }
    @IBAction func Honk5BTN(_ sender: Any) {
        playSound(for: "springJump")

    }
    
    @IBAction func Honk6BTN(_ sender: Any) {
        playSound(for: "vintageCar")

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
