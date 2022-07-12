//
//  PageViewController.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 12.07.2022.
//

import UIKit

class PageViewController: UIPageViewController {
    var curentIndex = 0
    var imagesOnboarding = [OnboardingHelper]()
    
    let firstImageOnboarding = UIImage (named: "1")
    let secondImageOnboarding = UIImage (named: "2")
    let thirdImageOnboarding = UIImage (named: "3")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        let first = OnboardingHelper (image: firstImageOnboarding!, name: "Next")
        let second = OnboardingHelper (image: secondImageOnboarding!, name: "Next")
        let third = OnboardingHelper (image: thirdImageOnboarding!, name: "Finish")
        
        imagesOnboarding.append(first)
        imagesOnboarding.append(second)
        imagesOnboarding.append(third)
        arrayOnboardingVC[0].letsStartButton.addTarget(self, action: #selector(nextPage1), for: .touchUpInside)
        arrayOnboardingVC[1].letsStartButton.addTarget(self, action: #selector(nextPage1), for: .touchUpInside)
        arrayOnboardingVC[2].letsStartButton.addTarget(self, action: #selector(finish), for: .touchUpInside)

    }
    
    lazy var arrayOnboardingVC : [ImageViewController] = {
        var vC = [ImageViewController]()
        
        for imageOBB in imagesOnboarding {
            vC.append(ImageViewController(onboard: imageOBB))
        }
        return vC
    }()

    
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        
        self.view.backgroundColor = .clear
        setViewControllers([ arrayOnboardingVC[0]], direction: .forward, animated: true, completion: nil)
        
        self.dataSource = self
        self.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func nextPage1 () {
        setViewControllers([ arrayOnboardingVC[curentIndex + 1]], direction: .forward, animated: true, completion: nil)
        curentIndex += 1
        animateView(arrayOnboardingVC[curentIndex].letsStartButton)
    }

    
    @objc func finish () {
   
        let navVc = UINavigationController (rootViewController: TabBarViewController())
        navigationController?.pushViewController(TabBarViewController(), animated: true)
        animateView(arrayOnboardingVC[curentIndex].letsStartButton)

    
    }
}


extension PageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewController = viewController as? ImageViewController else {return nil}
        if let index = arrayOnboardingVC.firstIndex(of: viewController) {
            curentIndex = index
            if index > 0 {
                return arrayOnboardingVC[index - 1]
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ImageViewController else { return nil }
        if let index = arrayOnboardingVC.firstIndex(of: viewController) {
            curentIndex = index

            if index < imagesOnboarding.count - 1 {
                return arrayOnboardingVC[index + 1]
            }
        }
        return nil
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return imagesOnboarding.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
 }


fileprivate func animateView (_ viewToAnimate : UIView) {
    UIView.animate(withDuration: 0.05, delay: 0, usingSpringWithDamping: 20, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
        viewToAnimate.transform = CGAffineTransform (scaleX: 0.95, y: 0.95)
        
    }) { (_) in
        UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
            viewToAnimate.transform = CGAffineTransform (scaleX: 1, y: 1)
            
        }, completion: nil)
        
    }
}
