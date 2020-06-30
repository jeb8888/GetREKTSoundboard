//
//  SoundManager.swift
//  GRSB Swift 5
//
//  Created by Jared Ebenstein on 6/29/20.
//  Copyright © 2020 Jared Ebenstein. All rights reserved.
//

import Foundation
import AVFoundation


class SoundManager {
    
    var instrumentPlayer = AVAudioPlayer()
    
    class var sharedInstance: SoundManager {
        struct Static {
            static let sharedInstance : SoundManager = {
                SoundManager()
            }()
        }
        return Static.sharedInstance
    }
    
    //    static let sharedInstance: SoundManager = {
    //        SoundManager()
    //    }()
    
    func playAudio(fileName: String, fileType: String) {
        if (fileName == "" || fileType == ""){
            print("Invalid filename or file type: \(fileName).\(fileType)")
            return
        }
        let url = NSURL.fileURL(withPath: Bundle.main.path(forResource: fileName, ofType: fileType)!)
        do {
            try instrumentPlayer = AVAudioPlayer(contentsOf: url)
        } catch {
            print("Player not available.")
        }
        print("Attempting to play...")
        instrumentPlayer.play()
        print("Done playing...")
    }
    
    func stopAudio(fileName: String, fileType: String ) {
        
        if (fileName == "" || fileType == ""){
            print("Invalid filename or file type: \(fileName).\(fileType)")
            return
        }
        let url = NSURL.fileURL(withPath: Bundle.main.path(forResource: fileName, ofType: fileType)!)
        do {
            try instrumentPlayer = AVAudioPlayer(contentsOf: url)
        } catch {
            print("Player not available.")
        }
        print("Attempting to stop...")
        instrumentPlayer.stop()
        print("Done stopping...")
    }
}
