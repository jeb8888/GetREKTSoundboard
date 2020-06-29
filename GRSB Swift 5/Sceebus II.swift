////
////  ViewController.swift
////  GRSB Swift 5
////
////  Created by Jared Ebenstein on 6/24/20.
////  Copyright © 2020 Jared Ebenstein. All rights reserved.
////
//
//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.view.translatesAutoresizingMaskIntoConstraints = false // disables interface builder
//        self.view.backgroundColor = .green
//
//        // Add subview to main view
//        // Delete for automatic test. Break glass for manual
//
//        //let buttonView = UIView()
////        let button1 = UIButton()
////        let button2 = UIButton()
////        let button3 = UIButton()
////        button1.translatesAutoresizingMaskIntoConstraints = false
////        button2.translatesAutoresizingMaskIntoConstraints = false
////        button3.translatesAutoresizingMaskIntoConstraints = false
////        button1.backgroundColor = .blue
////        button2.backgroundColor = .blue
////        button3.backgroundColor = .blue
////
////        let leftAnchorView = UIView()            // 1
////        let button1TrailingAnchorView = UIView() // 2
////        let button2TrailingAnchorView = UIView() // 3
////        let button3TrailingAnchorView = UIView() // 4
//                                                    // | - 1 - * - 2 - * - 3 - * - 4 - |
//                                                    // | - 1 - ~ - 2 - ~ - 3 - ~ - 4 - |
//                                                    // ^ self.view's leadingMargins   ^
//
//                                                    // * - UIButton, 50x50px
//                                                    // * - UILabel,  has its own set of labels, centerX set to UIbutton
//
////        leftAnchorView.translatesAutoresizingMaskIntoConstraints = false
////        button1TrailingAnchorView.translatesAutoresizingMaskIntoConstraints = false
////        button2TrailingAnchorView.translatesAutoresizingMaskIntoConstraints = false
////        button3TrailingAnchorView.translatesAutoresizingMaskIntoConstraints = false
////
////        leftAnchorView.backgroundColor = .orange
////        button1TrailingAnchorView.backgroundColor = .orange
////        button2TrailingAnchorView.backgroundColor = .orange
////        button3TrailingAnchorView.backgroundColor = .orange
////
////        self.view.addSubview(leftAnchorView)
////        self.view.addSubview(button1TrailingAnchorView)
////        self.view.addSubview(button2TrailingAnchorView)
////        self.view.addSubview(button3TrailingAnchorView)
////
////        self.view.addSubview(button1)
////        self.view.addSubview(button2)
////        self.view.addSubview(button3)
//
//        let superview = self.view!
////        let leftAnchorViewConstraints = [
////            leftAnchorView.leadingAnchor.constraint(equalTo: superview.lau
////        ]
//
//        // Delete for automatic test. Break glass for manual
//
////        self.view.addSubview(buttonView)
//
//
////        buttonView.translatesAutoresizingMaskIntoConstraints = false
////        buttonView.backgroundColor = .yellow
////
////        let buttonView3 = UIView()
////        let buttonView4 = UIView()
////
////        self.view.addSubview(buttonView3)
////        self.view.addSubview(buttonView4)
////        buttonView3.translatesAutoresizingMaskIntoConstraints = false
////        buttonView4.translatesAutoresizingMaskIntoConstraints = false
////        buttonView3.backgroundColor = .orange
////        buttonView4.backgroundColor = .blue
//
//        let buttonView = gimmeButtonviewPls()
//        self.view.addSubview(buttonView)
//
//        let buttonViewLower = gimmeButtonviewPls()
//        self.view.addSubview(buttonViewLower)
//
//        // Delete for automatic test. Break glass for manual
//
////        let constraints = [
////            //buttonView.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
//////            buttonView.centerYAnchor.constraint(equalTo: superview.centerYAnchor),
////            buttonView.widthAnchor.constraint(equalToConstant: 90),
//////            buttonView.heightAnchor.constraint(equalTo: buttonView.widthAnchor)
////            buttonView.heightAnchor.constraint(equalToConstant: 100)
////
////        ]
////        let constraints1 = [
////            //buttonView.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
//////            buttonView.centerYAnchor.constraint(equalTo: superview.centerYAnchor),
////            buttonView3.widthAnchor.constraint(equalToConstant: 90),
//////            buttonView3.heightAnchor.constraint(equalTo: buttonView3.widthAnchor)
////            buttonView3.heightAnchor.constraint(equalToConstant: 100)
////
////        ]
////
////        let constraints2 = [
////            //buttonView.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
//////            buttonView.centerYAnchor.constraint(equalTo: superview.centerYAnchor),
////            buttonView4.widthAnchor.constraint(equalToConstant:90),
//////            buttonView4.heightAnchor.constraint(equalTo: buttonView4.widthAnchor)
////            buttonView4.heightAnchor.constraint(equalToConstant: 100)
////
////        ]
//
//        // Delete for automatic test. Break glass for manual
//
//
//        NSLayoutConstraint(item: buttonView,
//                           attribute: .top,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .topMargin,
//                           multiplier: 1.0,
//            constant: 0.0).isActive = true
//
//        NSLayoutConstraint(item: buttonView,
//                           attribute: .leading,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .leadingMargin,
//                           multiplier: 1.0,
//                           constant: 0.0).isActive = true
//
//        NSLayoutConstraint(item: buttonViewLower,
//                           attribute: .top,
//                           relatedBy: .equal,
//                           toItem: buttonView,
//                           attribute: .bottom,
//                           multiplier: 1.0,
//            constant: 20.0).isActive = true
//
//        NSLayoutConstraint(item: buttonViewLower,
//                           attribute: .leading,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .leadingMargin,
//                           multiplier: 1.0,
//                           constant: 0.0).isActive = true
////
////        NSLayoutConstraint(item: buttonView3,
////                           attribute: .top,
////                           relatedBy: .equal,
////                           toItem: view,
////                           attribute: .topMargin,
////                           multiplier: 1.0,
////                           constant: 0.0).isActive = true
////
////        NSLayoutConstraint(item: buttonView3,
////                           attribute: .centerX,
////                           relatedBy: .equal,
////                           toItem: view,
////                           attribute: .centerX,
////                           multiplier: 1.0,
////                           constant: 0.0).isActive = true
////
////        NSLayoutConstraint(item: buttonView4,
////                           attribute: .top,
////                           relatedBy: .equal,
////                           toItem: view,
////                           attribute: .topMargin,
////                           multiplier: 1.0,
////                           constant: 0.0).isActive = true
////
////        NSLayoutConstraint(item: buttonView4,
////                           attribute: .trailing,
////                           relatedBy: .equal,
////                           toItem: view,
////                           attribute: .trailingMargin,
////                           multiplier: 1.0,
////                           constant: 0.0).isActive = true
//
//
//
//        //NSLayoutConstraint.activate(constraints)
//        // End auto test
//
//
//
////        NSLayoutConstraint.activate(constraints2)
////        NSLayoutConstraint.activate(constraints1)
//
//
////        let buttonView2 = UIView()
////        self.view.addSubview(buttonView2)
////        buttonView2.translatesAutoresizingMaskIntoConstraints = false
////        buttonView2.backgroundColor = .yellow
////
//////        let constraints2 = [
//////            //buttonView.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
////////            buttonView.centerYAnchor.constraint(equalTo: superview.centerYAnchor),
//////            buttonView2.widthAnchor.constraint(equalToConstant: 100),
//////            buttonView2.heightAnchor.constraint(equalTo: buttonView2.widthAnchor)
//////        ]
////
////        NSLayoutConstraint(item: buttonView2,
////                           attribute: .centerX,
////                           relatedBy: .equal,
////                           toItem: view,
////                           attribute: .centerXWithinMargins,
////                           multiplier: 1.0,
////                           constant: 50.0).isActive = true
////
////        NSLayoutConstraint(item: buttonView2,
////                           attribute: .top,
////                           relatedBy: .equal,
////                           toItem: buttonView,
////                           attribute: .bottom,
////                           multiplier: 1.0,
////            constant: 0.0).isActive = true
////
////        NSLayoutConstraint.activate(constraints2)
//
//
//        // Delete for automatic test. Break glass for manual
////        // Add button to subview
////        let buttonBoy1 = UIButton()
////        buttonView.addSubview(buttonBoy1)
////
////        buttonBoy1.translatesAutoresizingMaskIntoConstraints = false
////        buttonBoy1.backgroundColor = .red
////        buttonBoy1.addTarget(self, action: #selector(action(sender:)), for: .touchUpInside)
////
////
////
////        let constraintsButton1 = [
////            buttonBoy1.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor),
////            buttonBoy1.topAnchor.constraint(equalTo: buttonView.topAnchor),
////            buttonBoy1.widthAnchor.constraint(equalToConstant: 50),
////            buttonBoy1.heightAnchor.constraint(equalTo: buttonBoy1.widthAnchor)
////        ]
////
////            let buttonBoy2 = UIButton()
////            buttonView3.addSubview(buttonBoy2)
////
////            buttonBoy2.translatesAutoresizingMaskIntoConstraints = false
////            buttonBoy2.backgroundColor = .red
////            buttonBoy2.addTarget(self, action: #selector(action(sender:)), for: .touchUpInside)
////
////
////
////            let constraintsButton2 = [
////                buttonBoy2.centerXAnchor.constraint(equalTo: buttonView3.centerXAnchor),
////                buttonBoy2.topAnchor.constraint(equalTo: buttonView3.topAnchor),
////                buttonBoy2.widthAnchor.constraint(equalToConstant: 50),
////                buttonBoy2.heightAnchor.constraint(equalTo: buttonBoy2.widthAnchor)
////            ]
////
////            let buttonBoy3 = UIButton()
////            buttonView4.addSubview(buttonBoy3)
////
////            buttonBoy3.translatesAutoresizingMaskIntoConstraints = false
////            buttonBoy3.backgroundColor = .red
////            buttonBoy3.addTarget(self, action: #selector(action(sender:)), for: .touchUpInside)
////
////
////
////            let constraintsButton3 = [
////                buttonBoy3.centerXAnchor.constraint(equalTo: buttonView4.centerXAnchor),
////                buttonBoy3.topAnchor.constraint(equalTo: buttonView4.topAnchor),
////                buttonBoy3.widthAnchor.constraint(equalToConstant: 50),
////                buttonBoy3.heightAnchor.constraint(equalTo: buttonBoy3.widthAnchor)
////            ]
////
////
////
////        NSLayoutConstraint.activate(constraintsButton1)
////        NSLayoutConstraint.activate(constraintsButton2)
////        NSLayoutConstraint.activate(constraintsButton3)
////
////        let labelMan1 = UILabel()
////        buttonView.addSubview(labelMan1)
////        labelMan1.translatesAutoresizingMaskIntoConstraints = false
////
////        labelMan1.numberOfLines = 0
////        labelMan1.textColor = .systemTeal
////        labelMan1.textAlignment = .center
////        labelMan1.font = UIFont(name: "Comic Sans MS", size: 13.0)
////        labelMan1.text = "We are going to play a typical"
////
////        let constraintsLabel1 = [
////            labelMan1.widthAnchor.constraint(equalToConstant: 90),
////            labelMan1.heightAnchor.constraint(equalToConstant: 40),
////            labelMan1.bottomAnchor.constraint(equalTo: buttonView.bottomAnchor),
////            labelMan1.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor)
////        ]
////
////        NSLayoutConstraint.activate(constraintsLabel1)
//
//        let buttonViews = gimmeViews() // get 15 views
//        //addButtonSubviews(views: buttonViews) // add them to the scene
//        // Do we make a function to add buttons and constrain them?
//        // I'll stick with layouts for now...
//
//        print(buttonViews.count)
//
//        // Do any additional setup after loading the view.
//    }
//
//    @objc private func action(sender: UIButton) {
//        print("test")
//    }
//
//    func gimmeViews() -> [UIView]{
//        var views = [UIView]()
//        for i in 0...14 {
//            let view = UIView()
////            view.backgroundColor = .yellow
////            view.translatesAutoresizingMaskIntoConstraints = false
//
//
////            let button = UIButton()
////            view.addSubview(button)
////
////            button.translatesAutoresizingMaskIntoConstraints = false
////            button.backgroundColor = .red
////            button.tag = i
////            button.addTarget(self, action: #selector(action(sender:)), for: .touchUpInside)
//
//
//            views.append(UIView())
//        }
////        print(views.count)
//        return views
//    }
//
//    func gimmeButtonviewPls() -> UIView {
//        // 1. Creates subview
//        // 2. Sizes subview to 90 x 100
//        // 3. Adds UIButton of size 50x50
//        // 4. Adds UILabel of size 100x40
//
//
//        // UIView
//        let buttonView = UIView()
//        buttonView.translatesAutoresizingMaskIntoConstraints = false
//        buttonView.backgroundColor = .yellow
//
//        let buttonViewConstraints = [
//            buttonView.widthAnchor.constraint(equalToConstant: 90),
//            buttonView.heightAnchor.constraint(equalToConstant: 100)
//        ]
//
//        NSLayoutConstraint.activate(buttonViewConstraints) // Activate subview constraints to 90x100
//
//
//        // UIButton
//        let button = UIButton()
//        buttonView.addSubview(button)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .red
//
//        let buttonConstraints = [
//            button.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor),
//            button.topAnchor.constraint(equalTo: buttonView.topAnchor),
//            button.widthAnchor.constraint(equalToConstant: 50),
//            button.heightAnchor.constraint(equalTo: button.widthAnchor)
//        ]
//
//        NSLayoutConstraint.activate(buttonConstraints)
//
//
//        // UILabel
//        let labelMan1 = UILabel()
//        buttonView.addSubview(labelMan1)
//        labelMan1.translatesAutoresizingMaskIntoConstraints = false
//
//        labelMan1.numberOfLines = 0
//        labelMan1.textColor = .systemTeal
//        labelMan1.textAlignment = .center
//        labelMan1.font = UIFont(name: "Comic Sans MS", size: 13.0)
//        labelMan1.text = "We are going to play a typical"
//
//        let constraintsLabel1 = [
//            labelMan1.widthAnchor.constraint(equalToConstant: 90),
//            labelMan1.heightAnchor.constraint(equalToConstant: 40),
//            labelMan1.bottomAnchor.constraint(equalTo: buttonView.bottomAnchor),
//            labelMan1.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor)
//        ]
//
//        NSLayoutConstraint.activate(constraintsLabel1)
//
//        return buttonView
//
//        // Returns
//        // viewDidLoad adds this subview
//        // ...
//        // viewDidLayoutSubviews constrains errythang
//
//    }
//
//
//}
//
//extension NSLayoutConstraint {
//
//    public class func useAndActivateConstraints(constraints: [NSLayoutConstraint]) {
//        for constraint in constraints {
//            if let view = constraint.firstItem as? UIView {
//                 view.translatesAutoresizingMaskIntoConstraints = false
//            }
//        }
//        activate(constraints)
//    }
//}
