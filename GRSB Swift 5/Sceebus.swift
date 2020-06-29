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
//        let buttonView = UIView()
//        self.view.addSubview(buttonView)
//
//        buttonView.translatesAutoresizingMaskIntoConstraints = false
//        buttonView.backgroundColor = .yellow
//
//        let superview = self.view!
//        let constraints = [
//            //buttonView.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
////            buttonView.centerYAnchor.constraint(equalTo: superview.centerYAnchor),
//            buttonView.widthAnchor.constraint(equalToConstant: 100),
//            buttonView.heightAnchor.constraint(equalTo: buttonView.widthAnchor)
//        ]
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
//                           attribute: .centerX,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .centerXWithinMargins,
//                           multiplier: 1.0,
//                           constant: 50.0).isActive = true
//
//
//        NSLayoutConstraint.activate(constraints)
//
//
//        let buttonView2 = UIView()
//        self.view.addSubview(buttonView2)
//        buttonView2.translatesAutoresizingMaskIntoConstraints = false
//        buttonView2.backgroundColor = .yellow
//
//        let constraints2 = [
//            //buttonView.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
////            buttonView.centerYAnchor.constraint(equalTo: superview.centerYAnchor),
//            buttonView2.widthAnchor.constraint(equalToConstant: 100),
//            buttonView2.heightAnchor.constraint(equalTo: buttonView2.widthAnchor)
//        ]
//
//        NSLayoutConstraint(item: buttonView2,
//                           attribute: .centerX,
//                           relatedBy: .equal,
//                           toItem: view,
//                           attribute: .centerXWithinMargins,
//                           multiplier: 1.0,
//                           constant: 50.0).isActive = true
//
//        NSLayoutConstraint(item: buttonView2,
//                           attribute: .top,
//                           relatedBy: .equal,
//                           toItem: buttonView,
//                           attribute: .bottom,
//                           multiplier: 1.0,
//            constant: 0.0).isActive = true
//
//        NSLayoutConstraint.activate(constraints2)
//
//
//        // Add button to subview
//        let buttonBoy = UIButton()
//        buttonView.addSubview(buttonBoy)
//
//        buttonBoy.translatesAutoresizingMaskIntoConstraints = false
//        buttonBoy.backgroundColor = .red
//        buttonBoy.addTarget(self, action: #selector(action(sender:)), for: .touchUpInside)
//
//
//
//        let constraintsButton = [
//            buttonBoy.centerXAnchor.constraint(equalTo: buttonView.centerXAnchor),
//            buttonBoy.topAnchor.constraint(equalTo: buttonView.topAnchor),
//            buttonBoy.widthAnchor.constraint(equalToConstant: 50),
//            buttonBoy.heightAnchor.constraint(equalTo: buttonBoy.widthAnchor)
//        ]
//
//        NSLayoutConstraint.activate(constraintsButton)
//
//        let buttonViews = gimmeViews() // get 15 views
//        addButtonSubviews(views: buttonViews) // add them to the scene
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
//    func addButtonSubviews(views: [UIView]) {
//        for i in 0...14 {
//            let buttonView = views[i]
//            self.view.addSubview(buttonView)
//        }
//    }
//    func constrainViews(views: [UIView]) {
//        var row = 0 // [0, 4]
//        var column = 0 // [0, 2]
//        for i in 0...14 {
//            let buttonView = views[i]
//
//            var
//            switch (column) {
//            case 0:
//                break
//            case 1:
//                break
//            case 2:
//                break
//            default:
//                break
//            }
//        }
//    }
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
