//
//  GRSBPageViewController.swift
//  GRSB Swift 5
//
//  Created by Jared Ebenstein on 6/28/20.
//  Copyright © 2020 Jared Ebenstein. All rights reserved.
//

import UIKit

class GRSBPageViewController: UIPageViewController {

    var pageControl: UIPageControl!
    let pages = [GRSBSoundViewController(), GRSBSoundViewController(), GRSBSoundViewController(), GRSBSoundViewController()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        self.delegate = self
        
        self.setViewControllers([pages.first!], direction: .forward, animated: true, completion: nil)
        setupViews()
        
        // Do any additional setup after loading the view.
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


extension GRSBPageViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let viewControllerIndex = pages.index(of: viewController as! GRSBSoundViewController) {
            if viewControllerIndex != 0 {
                let beforeController = pages[viewControllerIndex - 1]
                beforeController.page = (viewController as! GRSBSoundViewController).page - 1
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
        if let viewControllerIndex = pages.index(of: viewController as! GRSBSoundViewController) {
            if viewControllerIndex < pages.count - 1 {
                let afterController = pages[viewControllerIndex + 1]
                afterController.page = (viewController as! GRSBSoundViewController).page + 1
                return afterController
            }
            else {
                print("IndexOutOfBounds or already showing the last page")
            }
        }
        return nil
    }
}

extension GRSBPageViewController {
    func setupViews() {
        pageControl = UIPageControl()
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = 0
        pageControl.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(pageControl)
        configureLayout()
    }
    
    func configureLayout() {
        pageControl.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
}
