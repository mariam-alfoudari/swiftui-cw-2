//
//  PlaySound.swift
//  SwiftUICW2
//
//  Created by mariam alfoudari on 27/12/2020.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound , ofType: type){
    do {
       audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
    audioPlayer?.play()
    } catch {
        // couldn't load file :(
    }
}
}
