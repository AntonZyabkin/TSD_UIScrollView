//
//  ImageViewController.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 12.07.2022.
//

import UIKit

class ImageViewController: UIViewController {

    //MARK: - UIImageView
    var imageView : UIImageView = {
        var imageV = UIImageView ()
        imageV.layer.cornerRadius = 15
        imageV.layer.masksToBounds = true
        imageV.translatesAutoresizingMaskIntoConstraints = false
        return imageV
    }()
    var letsStartButton : UIButton = {
       
        let button = UIButton ()
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.setTitle("Go to Future", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        return button
    }()
    
    lazy var subView : [UIView] = [imageView, letsStartButton ]
    
    
    
    init (onboard: OnboardingHelper) {
        super .init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
        edgesForExtendedLayout = []
        imageView.image = onboard.image
        letsStartButton.setTitle(onboard.name, for: .normal)
        
        for view in subView {
            self.view.addSubview(view)
        }
        imageView.frame = CGRect (x: 0, y: 0, width: Int(view.bounds.maxX), height: 650)
        letsStartButton.frame = CGRect (x: 0, y: 750, width: 300, height: 50)
        letsStartButton.center.x = view.center.x
        navigationItem.hidesBackButton = true
        navigationItem.setHidesBackButton(true, animated: true)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
