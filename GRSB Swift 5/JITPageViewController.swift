//
//  JITPageViewController.swift
//  GRSB Swift 5
//
//  Created by Jared Ebenstein on 6/30/20.
//  Copyright © 2020 Jared Ebenstein. All rights reserved.
//

import UIKit

class JITPageViewController: UIPageViewController {

    var pageControl: UIPageControl!
    var pages = [JITViewController]()
    let customGreenColor = UIColor(red: 55.0/255.0, green: 164.0/255.0, blue: 0.0/255.0, alpha: 1.0)


    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        self.view.backgroundColor = customGreenColor
        self.pages = initializeSoundViewControllers()
        self.setViewControllers([pages.first!], direction: .forward, animated: true, completion: nil)
        setupViews()
        
        // Do any additional setup after loading the view.
    }
    
    func initializeSoundViewControllers() -> [JITViewController]{
        var soundViewControllers = [JITViewController]()
        print("Did we allocate a view controller upon array creation? " + soundViewControllers.count.description)
        let totalSounds = globalSoundList.count
        var totalPages = totalSounds / 15
        let remainderSounds = totalSounds % 15
        if remainderSounds != 0 {
            totalPages += 1 // Initiallize a page for any incomplete pages
        }
        
        print("\(globalSoundList.count) sounds = \(globalSoundList.count / 15) remainder \(globalSoundList.count % 15)")
        
        for i in 0...totalPages - 1{
            let jitViewController = (storyboard?.instantiateViewController(withIdentifier: "JITViewController")) as! JITViewController
            soundViewControllers.append(jitViewController)

            //soundViewControllers.append(JITViewController())
        }
        print("Allocated " + soundViewControllers.count.description + " sound view controllers")
        return soundViewControllers
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let currentFrame = pageControl.frame
        pageControl.frame = CGRect(x: currentFrame.origin.x, y: currentFrame.origin.y, width: currentFrame.width + 20, height: currentFrame.height)
        pageControl.layer.cornerRadius = currentFrame.height / 2
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


extension JITPageViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let viewControllerIndex = pages.index(of: viewController as! JITViewController) {
            if viewControllerIndex != 0 {
                let beforeController = pages[viewControllerIndex - 1]
                beforeController.page = (viewController as! JITViewController).page - 1
                return beforeController
            }
            else {
                print("IndexOutOfBounds or already showing the first page")
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var maxPages = 4
        if let viewControllerIndex = pages.index(of: viewController as! JITViewController) {
            if viewControllerIndex < pages.count - 1 {
                let afterController = pages[viewControllerIndex + 1]
                afterController.page = (viewController as! JITViewController).page + 1
                return afterController
            }
            else {
                print("IndexOutOfBounds or already showing the last page")
            }
        }
        return nil
    }
}

extension JITPageViewController {
    func setupViews() {
        pageControl = UIPageControl()
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = 0
        pageControl.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(pageControl)
        pageControl.isHidden = true
        configureLayout()
    }
    
    func configureLayout() {
        pageControl.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
}
