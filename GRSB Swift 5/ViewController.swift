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
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.view.translatesAutoresizingMaskIntoConstraints = false // disables interface builder
//        self.view.backgroundColor = .green
//
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
//
//        var bViews = [UIView]()
//        for i in 0...14 {
//
//            let bView = gimmeButtonviewPls()
//            bView.tag = i // tag it
//            bViews.append(bView)
//            self.view.addSubview(bView)
//        }
//
//        var r = 0
//        var c = 0
//        for i in 0...14 {
////            var index = (r + 1) * (c + 1) - 1
//            var index = i
//            print("Index: " + index.description + ", c: " + c.description + ", r: " + r.description)
//            let bView = bViews[index]
////            let mult = 1.0 * Double(r + 1)
//            var rPlusOne = Double((r + 1)) // Debugging
//////            let mult = Double(6.0 / rPlusOne)
////            let rowConstant = Double(6.0 / (5.0 - Double(r)))
////            let mult = Double(rowConstant * rPlusOne)
//////            let mult = Double(1.0 * rPlusOne)
////            print("Multiplier is " + rowConstant.description + " * " + rPlusOne.description + " (" + mult.description + ")")
//
////            NSLayoutConstraint(item: bView,
////                               attribute: .top,
////                               relatedBy: .equal,
////                               toItem: view,
////                               attribute: .topMargin,
////                               multiplier: CGFloat(mult),
////                constant: 0.0).isActive = true
//            let floatValue = Double(5.0)
////            rPlusOne = rPlusOne
////            let mult = Double(rPlusOne / floatValue)
////            print("Multiplier is set to " + rPlusOne.description + " / " + floatValue.description + " (" + mult.description + ")")
//            var mult = Double(1.0 + (Double(r) * 3.75))
////            mult = mult * (Double(2.0 / 5.0))
//            var constant  = Double(15.0)
//            print("Mult: " +  mult.description)
//                        if (r == 0) {
//                NSLayoutConstraint(item: bView,
//                                   attribute: .top,
//                                   relatedBy: .greaterThanOrEqual,
//                                   toItem: view,
//                                   attribute: .topMargin,
//                                   multiplier: CGFloat(1.0),
//                                   constant: CGFloat(0.0)).isActive = true
//            }
//            else if (r == 1) {
//                bView.backgroundColor = .orange
//                let friendView = bViews[index - 3]
//                NSLayoutConstraint(item: bView,
//                                   attribute: .top,
//                                   relatedBy: .greaterThanOrEqual,
//                                   toItem: friendView,
//                                   attribute: .bottom,
//                                   multiplier: CGFloat(1.0),
//                                   constant: CGFloat(constant)).isActive = true
//            }
//
//            else if (r == 2) {
//                 bView.backgroundColor = .blue
//                let friendView = bViews[index - 3]
//                NSLayoutConstraint(item: bView,
//                                   attribute: .top,
//                                   relatedBy: .greaterThanOrEqual,
//                                   toItem: friendView,
//                                   attribute: .bottom,
//                                   multiplier: CGFloat(1.0),
//                                   constant: CGFloat(constant)).isActive = true
//            }
//
//            else if (r == 3) {
//                bView.backgroundColor = .purple
//                let friendView = bViews[index - 3]
//
//                NSLayoutConstraint(item: bView,
//                                   attribute: .top,
//                                   relatedBy: .greaterThanOrEqual,
//                                   toItem: friendView,
//                                   attribute: .bottom,
//                                   multiplier: CGFloat(1.0),
//                                   constant: CGFloat(constant)).isActive = true
//            }
//
//            else if (r == 4) {
//                bView.backgroundColor = .brown
//                let friendView = bViews[index - 3]
//
//                NSLayoutConstraint(item: bView,
//                                   attribute: .top,
//                                   relatedBy: .greaterThanOrEqual,
//                                   toItem: friendView,
//                                   attribute: .bottom,
//                                   multiplier: CGFloat(1.0),
//                                   constant: CGFloat(constant)).isActive = true
//            }
//
//
//            if (c == 0) {
//                NSLayoutConstraint(item: bView,
//                                   attribute: .leading,
//                                   relatedBy: .equal,
//                                   toItem: view,
//                                   attribute: .leadingMargin,
//                                   multiplier: 1.0,
//                                   constant: 0.0).isActive = true
//            }
//            else if (c == 1) {
//                                   NSLayoutConstraint(item: bView,
//                                                      attribute: .centerX,
//                                                      relatedBy: .equal,
//                                                      toItem: view,
//                                                      attribute: .centerX,
//                                                      multiplier: 1.0,
//                                                      constant: 0.0).isActive = true
//            }
//            else if (c == 2) {
//                NSLayoutConstraint(item: bView,
//                                   attribute: .trailing,
//                                   relatedBy: .equal,
//                                   toItem: view,
//                                   attribute: .trailingMargin,
//                                   multiplier: 1.0,
//                                   constant: 0.0).isActive = true
//            }
//            else {
//                print("Index out of range")
//            }
//            c += 1
//            if (c == 3) {
//                c = 0
//                r += 1
//            }
//        }
////
////        let buttonView = gimmeButtonviewPls()
////        self.view.addSubview(buttonView)
////        let buttonViewLower = gimmeButtonviewPls()
////        self.view.addSubview(buttonViewLower)
////        NSLayoutConstraint(item: buttonView,
////                           attribute: .top,
////                           relatedBy: .equal,
////                           toItem: view,
////                           attribute: .topMargin,
////                           multiplier: 1.0,
////            constant: 0.0).isActive = true
////
////        NSLayoutConstraint(item: buttonView,
////                           attribute: .leading,
////                           relatedBy: .equal,
////                           toItem: view,
////                           attribute: .leadingMargin,
////                           multiplier: 1.0,
////                           constant: 0.0).isActive = true
////
////        NSLayoutConstraint(item: buttonViewLower,
////                           attribute: .top,
////                           relatedBy: .equal,
////                           toItem: buttonView,
////                           attribute: .bottom,
////                           multiplier: 1.0,
////            constant: 20.0).isActive = true
////
////        NSLayoutConstraint(item: buttonViewLower,
////                           attribute: .leading,
////                           relatedBy: .equal,
////                           toItem: view,
////                           attribute: .leadingMargin,
////                           multiplier: 1.0,
////                           constant: 0.0).isActive = true
//
//
//
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
//            buttonView.heightAnchor.constraint(equalToConstant: 90)
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
//        button.addTarget(self, action: #selector(action(sender:)), for: .touchUpInside)
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
