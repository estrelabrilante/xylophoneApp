//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import  AVFoundation

class ViewController: UIViewController {
  
    var audioPlayer: AVAudioPlayer?
    var currentTitle : String?
    
   
    @IBAction func audioKeyPressed(_ sender: UIButton) {
        print(sender)
        print(sender.backgroundColor)
        print(sender.currentTitle);
        var sound = (sender.currentTitle)!
        print("Button got pressed")
        playSoundC(soundName: sound)
    }
    // Xylophone

    func playSoundC(soundName:String) {
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!  )
            audioPlayer?.play()
                    
        }
}
    
        
    //*********
    
    //*********
    /*func playSoundC() {
        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            audioPlayer = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = audioPlayer else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }*/
   

    
    
    



    

