//
//  FiveViewController.swift
//  
//
//  Created by Katie Wendt on 4/2/25.
//

import UIKit
import AVFoundation

class FiveViewController: UIViewController {

//create audioPlayer and have it play mp3 or wav sound for each instrument
    var audioPlayer: AVAudioPlayer?
    
    func playSound(for instrument: String){
        let extensions = ["mp3", "wav"]
            var foundURL: URL? = nil

            for ext in extensions {
                if let url = Bundle.main.url(forResource: "\(instrument)_Sound", withExtension: ext) {
                    foundURL = url
                    break
                }
            }
        guard let url = foundURL else{
            print("Could not find sound file: \(instrument)_Sound with .mp3 or .wav extension")
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
    
    @IBAction func harpBtn(_ sender: UIButton) {
        //when clicked plays harp sound
        playSound(for: "harp")
    }
    
    @IBAction func guitarBtn(_ sender: UIButton) {
        //when clicked plays guitar sound
        playSound(for: "guitar")
    }
    
    @IBAction func violinBtn(_ sender: UIButton) {
        //when clicked plays violin sound
        playSound(for: "violin")
    }
    
    @IBAction func drumsBtn(_ sender: UIButton) {
        //when clicked plays drums sound
        playSound(for: "drum")
    }
    
    @IBAction func pianoBtn(_ sender: UIButton) {
        //when clicked plays piano sound
        playSound(for: "piano")
    }
    
    @IBAction func fluteBtn(_ sender: UIButton) {
        //when clicked plays flute sound
        playSound(for: "flute")
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
