//
//  JITViewController.swift
//  GRSB Swift 5
//
//  Created by Jared Ebenstein on 6/30/20.
//  Copyright © 2020 Jared Ebenstein. All rights reserved.
//

import UIKit

class JITViewController: UIViewController {

    var page = 0
//    var pageLabel = UILabel()
    var pageSoundContainer = [Sound]()
    var player = SoundManager()
//    var stopButton = UIButton()
    
    
    @IBOutlet var soManyDifferentButtons: [UIButton]!
    @IBOutlet var soManyDifferentLabels: [UILabel]!
    @IBOutlet weak var pageLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    //    @IBOutlet weak var pageLabel: UILabel!
//    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Let's get some views")
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.setupButtons()
    }
    // Sets up buttons with their own tags and functions to use for playing sounds
    func setupButtons() {
        if soManyDifferentButtons.count == 0 {
            print("ERROR: No buttons to buttonize.")
            return
        }
        for i in 0...14 {
            print("Page " + page.description + " Setting up button #" + i.description)
            let button = soManyDifferentButtons[i]
            button.backgroundColor = .clear
            let buttonView = button.superview
            buttonView?.backgroundColor = .clear
            button.tag = i
            button.addTarget(self, action: #selector(playSoundAction(sender:)), for: .touchUpInside)
        }
        stopButton.addTarget(self, action: #selector(stopButtonPressedAction(sender:)), for: .touchUpInside) // This should work
        
        
        
        pageSoundContainer = initializeSoundContainer()
       let pageNum = page + 1
       pageLabel.numberOfLines = 0
       pageLabel.textColor = .systemTeal
       pageLabel.textAlignment = .center
       pageLabel.font = UIFont(name: "Comic Sans MS", size: 20.0)
       pageLabel.text = "Page " + pageNum.description
        print("Page " + pageNum.description + " sound count: " + pageSoundContainer.count.description)

      
      var soundIndex = 0
      let soundContainerCount = pageSoundContainer.count
      for sound in pageSoundContainer {
          print("Page " + pageNum.description + ", sound " + soundIndex.description + ": \"" + sound.labelText + "\", as \"" + sound.soundResourceName + "\"")
          soundIndex += 1
      }
       
       if soundContainerCount != 15 {
           print("Non-congruent sound page with " + soundContainerCount.description + " sounds")
           let totalSoundCount = Sound.getTotalSoundCount()
           let fullPages = self.page
           var calculatedSounds = (fullPages * 15) + soundContainerCount
           print("Total sounds (real) " + totalSoundCount.description + " calculated soumds " + calculatedSounds.description)
           for i in 0...soundContainerCount - 1 {
               //let bView = bViews[i]
               let sound = pageSoundContainer[i]
               //let soundLabel = self.getSoundLabelForButtonView(buttonView: bView)
               //let soundButton = self.getSoundButtonForButtonView(buttonView: bView)
               let soundLabel = self.getSoundLabelForButtonView(index: i)
               let soundButton = self.getSoundButtonForButtonView(index: i)
               soundLabel.text = sound.labelText
               let soundButtonImage = UIImage(named: sound.iconResourceName)
               soundButton.setImage(soundButtonImage?.withRenderingMode(.alwaysOriginal), for: .normal)
           }
           for i in soundContainerCount...14 {
//                let bView = bViews[i]
               let soundLabel = self.getSoundLabelForButtonView(index: i)
               let soundButton = self.getSoundButtonForButtonView(index: i)
               soundLabel.text = "" // Clear out blank sounds
               soundButton.backgroundColor = .clear // Clear out blank sounds
           }
           
           // For favorites, get favorites.count % 15
           
       }
       else {
           for i in 0...14 {
//                let bView = bViews[i]
               let sound = pageSoundContainer[i] // Sound N in page M
               let soundLabel = self.getSoundLabelForButtonView(index: i)
               let soundButton = self.getSoundButtonForButtonView(index: i)
               soundLabel.text = sound.labelText
               let soundButtonImage = UIImage(named: sound.iconResourceName)
               soundButton.setImage(soundButtonImage?.withRenderingMode(.alwaysOriginal), for: .normal)
           }
       }
    }
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        pageSoundContainer = initializeSoundContainer()
//        let pageNum = page + 1
//        pageLabel.numberOfLines = 0
//        pageLabel.textColor = .systemTeal
//        pageLabel.textAlignment = .center
//        pageLabel.font = UIFont(name: "Comic Sans MS", size: 20.0)
//        pageLabel.text = "Page " + pageNum.description
//         print("Page " + pageNum.description + " sound count: " + pageSoundContainer.count.description)
//
//
//       var soundIndex = 0
//       let soundContainerCount = pageSoundContainer.count
//       for sound in pageSoundContainer {
//           print("Page " + pageNum.description + ", sound " + soundIndex.description + ": \"" + sound.labelText + "\", as \"" + sound.soundResourceName + "\"")
//           soundIndex += 1
//       }
//
//        if soundContainerCount != 15 {
//            print("Non-congruent sound page with " + soundContainerCount.description + " sounds")
//            let totalSoundCount = Sound.getTotalSoundCount()
//            let fullPages = self.page
//            var calculatedSounds = (fullPages * 15) + soundContainerCount
//            print("Total sounds (real) " + totalSoundCount.description + " calculated soumds " + calculatedSounds.description)
//            for i in 0...soundContainerCount - 1 {
//                //let bView = bViews[i]
//                let sound = pageSoundContainer[i]
//                //let soundLabel = self.getSoundLabelForButtonView(buttonView: bView)
//                //let soundButton = self.getSoundButtonForButtonView(buttonView: bView)
//                let soundLabel = self.getSoundLabelForButtonView(index: i)
//                let soundButton = self.getSoundButtonForButtonView(index: i)
//                soundLabel.text = sound.labelText
//                let soundButtonImage = UIImage(named: sound.iconResourceName)
//                soundButton.setImage(soundButtonImage?.withRenderingMode(.alwaysOriginal), for: .normal)
//            }
//            for i in soundContainerCount...14 {
////                let bView = bViews[i]
//                let soundLabel = self.getSoundLabelForButtonView(index: i)
//                let soundButton = self.getSoundButtonForButtonView(index: i)
//                soundLabel.text = "" // Clear out blank sounds
//                soundButton.backgroundColor = .clear // Clear out blank sounds
//            }
//
//            // For favorites, get favorites.count % 15
//
//        }
//        else {
//            for i in 0...14 {
////                let bView = bViews[i]
//                let sound = pageSoundContainer[i] // Sound N in page M
//                let soundLabel = self.getSoundLabelForButtonView(index: i)
//                let soundButton = self.getSoundButtonForButtonView(index: i)
//                soundLabel.text = sound.labelText
//                let soundButtonImage = UIImage(named: sound.iconResourceName)
//                soundButton.setImage(soundButtonImage?.withRenderingMode(.alwaysOriginal), for: .normal)
//            }
//        }
//
//
//    }
    
    func getSoundButtonForButtonView(index: Int) -> UIButton {
        if index > soManyDifferentButtons.count - 1 {
            print("WARNING Index out of range for getSoundLabelForButtonView at index " + index.description)
        }
        return soManyDifferentButtons[index]
    }
    
    func getSoundLabelForButtonView(index: Int) -> UILabel {
        if index > soManyDifferentLabels.count - 1 {
            print("WARNING Index out of range for getSoundLabelForButtonView at index " + index.description)
        }
        return soManyDifferentLabels[index]
    }
    
    func initializeSoundContainer() -> [Sound] {
        return Sound.getListOfSoundIdentifiersFor(page: self.page) as! [Sound]
    }
    
    // "Wombo_Combo.mp3" => ["Wombo_Combo", "mp3"]
    func splitAudioFilename(fileName: String) -> [String] {
        let filenameArr = fileName.components(separatedBy: ".")
        return filenameArr
    }
    
    @objc private func stopButtonPressedAction(sender: UIButton) {
        print("Stop button pressed")
        SoundManager.sharedInstance.stopAudio(fileName: "Goddammit Nathan", fileType: "mp3")
    }
    
     @objc private func playSoundAction(sender: UIButton) { // Play sounds
            let buttonID = sender.tag
            let soundCount = self.pageSoundContainer.count
            if soundCount != 15 {
                //print("Non-congruent sound page, handle later")
                print("Detected touch from sound #: " + buttonID.description)
                let sound = pageSoundContainer[buttonID]
                let soundResourceName = sound.soundResourceName // "Wombo_Combo.mp3"
                var filenameArr = splitAudioFilename(fileName: soundResourceName) // ["Wombo_Combo", ".mp3"]
                if (filenameArr.count != 2) {
                    print("WARNING: Filename was split into an invalid array. SoundManager is probably gonna crash.")
                }
                print("Playing sound for: \(filenameArr[0]).\(filenameArr[1])" )
                SoundManager.sharedInstance.playAudio(fileName: "\(filenameArr[0])", fileType: "\(filenameArr[1])")
            }
            else {
                print("Detected touch from sound #: " + buttonID.description)
                let sound = pageSoundContainer[buttonID]
                let soundResourceName = sound.soundResourceName // "Wombo_Combo.mp3"
                var filenameArr = splitAudioFilename(fileName: soundResourceName) // ["Wombo_Combo", ".mp3"]
                if (filenameArr.count != 2) {
                    print("WARNING: Filename was split into an invalid array. SoundManager is probably gonna crash.")
                }
                print("Playing sound for: \(filenameArr[0]).\(filenameArr[1])" )
                SoundManager.sharedInstance.playAudio(fileName: "\(filenameArr[0])", fileType: "\(filenameArr[1])")
            }
            
    //            let soundResourceName = pageSoundContainer
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
