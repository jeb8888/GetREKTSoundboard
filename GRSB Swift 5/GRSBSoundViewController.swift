//
//  GRSBSoundViewController.swift
//  GRSB Swift 5
//
//  Created by Jared Ebenstein on 6/28/20.
//  Copyright © 2020 Jared Ebenstein. All rights reserved.
//

import UIKit

class GRSBSoundViewController: UIViewController {

    var page = 0
    var bViews = [UIView]()
    var pageLabel = UILabel()
    var pageSoundContainer = [Sound]()
    var player = SoundManager()
    var stopButton = UIButton()
//    let customGreenColor = UIColor(red: 55.0, green: 164.0, blue: 0.0, alpha: 1.0)
    
//    let customGreenColor = UIColor(
    // Greatest shade of green ever made, or your money back.//
    // There might be better colors, but probably not.       //
    // Literally ripped off of a Mountain Dew label in 2014. //
    
    override func viewWillAppear(_ animated: Bool) {
        let pageNum = page + 1
        pageLabel.numberOfLines = 0
        pageLabel.textColor = .systemTeal
        pageLabel.textAlignment = .center
        pageLabel.font = UIFont(name: "Comic Sans MS", size: 20.0)
        pageLabel.text = "Page " + pageNum.description
//        let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
//        statusBar.isHidden = true

//        stopButton.titleLabel = stopButtonTitleLabel
        stopButton.setTitle("Stop Playing", for: .normal)
        stopButton.setTitleColor(.orange, for: .normal)
//        let title = NSAttributedString(string: "Stop Playing", attributes: [NSAttribut])
        let stopButtonTitleLabel = stopButton.titleLabel
        stopButtonTitleLabel?.numberOfLines = 0
//        stopButtonTitleLabel?.textColor = .systemTeal
        stopButtonTitleLabel?.textAlignment = .center
        stopButtonTitleLabel?.font = UIFont(name: "Comic Sans MS", size: 20.0)
        stopButtonTitleLabel?.text = "Stop Playing"
//        stopButton.font
//        stopButton.titleLabel?.numberOfLines = 0
//        stopButtonTitleLabel.textColor = .red
//        stopButton.titleLabel =

        pageSoundContainer = initializeSoundContainer()
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
                let bView = bViews[i]
                let sound = pageSoundContainer[i]
                let soundLabel = self.getSoundLabelForButtonView(buttonView: bView)
                let soundButton = self.getSoundButtonForButtonView(buttonView: bView)
                soundLabel.text = sound.labelText
                let soundButtonImage = UIImage(named: sound.iconResourceName)
                soundButton.setImage(soundButtonImage?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
            for i in soundContainerCount...14 {
                let bView = bViews[i]
                let soundLabel = self.getSoundLabelForButtonView(buttonView: bView)
                let soundButton = self.getSoundButtonForButtonView(buttonView: bView)
                soundLabel.text = "" // Clear out blank sounds
                soundButton.backgroundColor = .clear // Clear out blank sounds
                
            }
            
            // For favorites, get favorites.count % 15
            
        }
        else {
            for i in 0...14 {
                let bView = bViews[i]
                let sound = pageSoundContainer[i] // Sound N in page M
                let soundLabel = self.getSoundLabelForButtonView(buttonView: bView)
                let soundButton = self.getSoundButtonForButtonView(buttonView: bView)
                soundLabel.text = sound.labelText
                let soundButtonImage = UIImage(named: sound.iconResourceName)
                soundButton.setImage(soundButtonImage?.withRenderingMode(.alwaysOriginal), for: .normal)
            }
        }
        
    }
    
    func getSoundLabelForButtonView(buttonView: UIView) -> UILabel {
        let allLabels = buttonView.subviews.filter{$0 is UILabel}
        if allLabels.count != 1 {
            print("WARNING: Got invalid number of UILabels in GRSBSoundViewController. \(allLabels.count) This will probably crash dude.")
        }
        return allLabels[0] as! UILabel
    }
    
    func getSoundButtonForButtonView(buttonView: UIView) -> UIButton {
        let allButtons = buttonView.subviews.filter{$0 is UIButton}
        if allButtons.count != 1 {
            print("WARNING: Got invalid number of UILabels in GRSBSoundViewController. \(allButtons.count) This will probably crash dude.")
        }
        return allButtons[0] as! UIButton
    }
    
    func initializeSoundContainer() -> [Sound] {
        return Sound.getListOfSoundIdentifiersFor(page: self.page) as! [Sound]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.translatesAutoresizingMaskIntoConstraints = false // disables interface builder
        player = SoundManager.sharedInstance
          for i in 0...14 {

            let bView = createButtonSubview(tag: i)
              bView.tag = i // tag it
              bViews.append(bView)
              self.view.addSubview(bView)
          }
        pageLabel.translatesAutoresizingMaskIntoConstraints = false
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(stopButton)
        self.view.addSubview(pageLabel)
        
        stopButton.addTarget(self, action: #selector(stopButtonPressedAction(sender:)), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
                print("Inside SoundViewController layThemOut")
                var r = 0
                var c = 0
                for i in 0...14 {
        //            var index = (r + 1) * (c + 1) - 1
                    var index = i
//                    print("Index: " + index.description + ", c: " + c.description + ", r: " + r.description)
                    let bView = bViews[index]
                    bView.backgroundColor = .clear

        //            let mult = 1.0 * Double(r + 1)
                    var rPlusOne = Double((r + 1)) // Debugging
        ////            let mult = Double(6.0 / rPlusOne)
        //            let rowConstant = Double(6.0 / (5.0 - Double(r)))
        //            let mult = Double(rowConstant * rPlusOne)
        ////            let mult = Double(1.0 * rPlusOne)
        //            print("Multiplier is " + rowConstant.description + " * " + rPlusOne.description + " (" + mult.description + ")")
                    
        //            NSLayoutConstraint(item: bView,
        //                               attribute: .top,
        //                               relatedBy: .equal,
        //                               toItem: view,
        //                               attribute: .topMargin,
        //                               multiplier: CGFloat(mult),
        //                constant: 0.0).isActive = true
                    let floatValue = Double(5.0)
        //            rPlusOne = rPlusOne
        //            let mult = Double(rPlusOne / floatValue)
        //            print("Multiplier is set to " + rPlusOne.description + " / " + floatValue.description + " (" + mult.description + ")")
                    var mult = Double(1.0 + (Double(r) * 3.75))
        //            mult = mult * (Double(2.0 / 5.0))
                    var constant  = Double(15.0)
//                    print("Mult: " +  mult.description)
                                if (r == 0) {
                        NSLayoutConstraint(item: bView,
                                           attribute: .top,
                                           relatedBy: .greaterThanOrEqual,
                                           toItem: view,
                                           attribute: .topMargin,
                                           multiplier: CGFloat(1.0),
                                           constant: CGFloat(0.0)).isActive = true
                    }
                    else if (r == 1) {
                        //bView.backgroundColor = .orange
                        let friendView = bViews[index - 3]
                        NSLayoutConstraint(item: bView,
                                           attribute: .top,
                                           relatedBy: .greaterThanOrEqual,
                                           toItem: friendView,
                                           attribute: .bottom,
                                           multiplier: CGFloat(1.0),
                                           constant: CGFloat(constant)).isActive = true
                    }
                    
                    else if (r == 2) {
                         //bView.backgroundColor = .blue
                        let friendView = bViews[index - 3]
                        NSLayoutConstraint(item: bView,
                                           attribute: .top,
                                           relatedBy: .greaterThanOrEqual,
                                           toItem: friendView,
                                           attribute: .bottom,
                                           multiplier: CGFloat(1.0),
                                           constant: CGFloat(constant)).isActive = true
                    }
                    
                    else if (r == 3) {
                        //bView.backgroundColor = .purple
                        let friendView = bViews[index - 3]

                        NSLayoutConstraint(item: bView,
                                           attribute: .top,
                                           relatedBy: .greaterThanOrEqual,
                                           toItem: friendView,
                                           attribute: .bottom,
                                           multiplier: CGFloat(1.0),
                                           constant: CGFloat(constant)).isActive = true
                    }
                    
                    else if (r == 4) {
                        //bView.backgroundColor = .brown
                        let friendView = bViews[index - 3]

                        NSLayoutConstraint(item: bView,
                                           attribute: .top,
                                           relatedBy: .greaterThanOrEqual,
                                           toItem: friendView,
                                           attribute: .bottom,
                                           multiplier: CGFloat(1.0),
                                           constant: CGFloat(constant)).isActive = true
                    }

                    
                    if (c == 0) {
                        NSLayoutConstraint(item: bView,
                                           attribute: .leading,
                                           relatedBy: .equal,
                                           toItem: view,
                                           attribute: .leadingMargin,
                                           multiplier: 1.0,
                                           constant: 0.0).isActive = true
                    }
                    else if (c == 1) {
                                           NSLayoutConstraint(item: bView,
                                                              attribute: .centerX,
                                                              relatedBy: .equal,
                                                              toItem: view,
                                                              attribute: .centerX,
                                                              multiplier: 1.0,
                                                              constant: 0.0).isActive = true
                    }
                    else if (c == 2) {
                        NSLayoutConstraint(item: bView,
                                           attribute: .trailing,
                                           relatedBy: .equal,
                                           toItem: view,
                                           attribute: .trailingMargin,
                                           multiplier: 1.0,
                                           constant: 0.0).isActive = true
                    }
                    else {
                        print("Index out of range")
                    }
                    c += 1
                    if (c == 3) {
                        c = 0
                        r += 1
                    }
                }
            
        let pageLabelConstratints = [
            pageLabel.widthAnchor.constraint(equalToConstant: 100),
            pageLabel.heightAnchor.constraint(equalToConstant: 40),
//            pageLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
//            pageLabel.lead
        ]
        
        let stopButtonConstraints = [
            stopButton.widthAnchor.constraint(equalToConstant: 150),
            stopButton.heightAnchor.constraint(equalToConstant: 40),
//            pageLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ]
        
        NSLayoutConstraint.activate(stopButtonConstraints)
        NSLayoutConstraint.activate(pageLabelConstratints)
        
        NSLayoutConstraint(item: pageLabel,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .bottomMargin,
                           multiplier: 1.0,
            constant: 0.0).isActive = true
        NSLayoutConstraint(item: pageLabel,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .leadingMargin,
                           multiplier: 1.0,
            constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: stopButton,
                           attribute: .bottom,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .bottomMargin,
                           multiplier: 1.0,
            constant: 0.0).isActive = true
        
        NSLayoutConstraint(item: stopButton,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .trailingMargin,
                           multiplier: 1.0,
            constant: 0.0).isActive = true
        
        
        print("Layed out page #" + self.page.description)
    }
    
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
        

    // Creates a sound's button and label and constrains them to a UIView
    func createButtonSubview(tag: Int) -> UIView {
        // 1. Creates subview
        // 2. Sizes subview to 90 x 100
        // 3. Adds UIButton of size 50x50
        // 4. Adds UILabel of size 100x40
        let buttonView = UIView()
        
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.backgroundColor = .yellow
        
        let buttonViewConstraints = [
            buttonView.widthAnchor.constraint(equalToConstant: 90),
            buttonView.heightAnchor.constraint(equalToConstant: 90)
        ]
        
        NSLayoutConstraint.activate(buttonViewConstraints) // Activate subview constraints to 90x100
        
        
        // UIButton
        let button = UIButton()
        button.tag = tag
        buttonView.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        
        let buttonConstraints = [
            button.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor),
            button.topAnchor.constraint(equalTo: buttonView.topAnchor),
            button.widthAnchor.constraint(equalToConstant: 50),
            button.heightAnchor.constraint(equalTo: button.widthAnchor)
        ]
        
        button.addTarget(self, action: #selector(playSoundAction(sender:)), for: .touchUpInside)

        NSLayoutConstraint.activate(buttonConstraints)
        // UILabel
        let labelMan1 = UILabel()
        buttonView.addSubview(labelMan1)
        labelMan1.translatesAutoresizingMaskIntoConstraints = false
        
        labelMan1.numberOfLines = 0
        labelMan1.textColor = .systemTeal
        labelMan1.textAlignment = .center
        labelMan1.font = UIFont(name: "Comic Sans MS", size: 13.0)
        labelMan1.text = ""
        
        let constraintsLabel1 = [
            labelMan1.widthAnchor.constraint(equalToConstant: 90),
            labelMan1.heightAnchor.constraint(equalToConstant: 40),
            labelMan1.bottomAnchor.constraint(equalTo: buttonView.bottomAnchor),
            labelMan1.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor)
        ]
        
        NSLayoutConstraint.activate(constraintsLabel1)
        // Returns
        // viewDidLoad adds this subview
        // ...
        // viewDidLayoutSubviews constrains everything
        return buttonView
    }
}


extension NSLayoutConstraint {

    public class func useAndActivateConstraints(constraints: [NSLayoutConstraint]) {
        for constraint in constraints {
            if let view = constraint.firstItem as? UIView {
                 view.translatesAutoresizingMaskIntoConstraints = false
            }
        }
        activate(constraints)
    }
}
