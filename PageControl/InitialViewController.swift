//
//  InitialViewController.swift
//  PageControl
//
//  Created by Manish Singh on 7/10/18.
//  Copyright © 2018 Seemu. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController, OnboardingViewControllerDelegate {
    func onboardingPageViewController(onboardingPageViewController: PageViewController, didUpdatePageCount count: Int) {
        print("<#T##items: Any...##Any#>")
    }

    func onboardingPageViewController(onboardingPageViewController: PageViewController, didUpdatePageIndex index: Int) {
        print("<#T##items: Any...##Any#>")
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ViewController.swift
    @IBOutlet weak var pageControl: UIPageControl!
    // Prepare the segue(Embed Segue) to UIPageViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let onboardingViewController = segue.destination as! PageViewController
             {
            //onboardingViewController.onboardingDelegate = self
        }
    }
}
//    // Update the count from UIPageViewController
//    func onboardingPageViewController(onboardingPageViewController: OnboardingViewController, didUpdatePageCount count: Int) {
//        pageControl.numberOfPages = count
//    }
//    // Update the index from UIPageViewController
//    func onboardingPageViewController(onboardingPageViewController: OnboardingViewController, didUpdatePageIndex index: Int) {
//        pageControl.currentPage = index
//    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

// OnboardingViewController.swift
protocol OnboardingViewControllerDelegate: class {
    func onboardingPageViewController(onboardingPageViewController:
        PageViewController, didUpdatePageCount count: Int)
    func onboardingPageViewController(onboardingPageViewController:
        PageViewController, didUpdatePageIndex index: Int)
}
// ViewController.swift

