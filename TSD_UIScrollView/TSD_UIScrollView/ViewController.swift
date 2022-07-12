//
//  ViewController.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 27.06.2022.
//

import UIKit

class ViewController: UIViewController {

    let imageScrollView = UIScrollView ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        settingImageScrollView ()
        
    }


    func settingImageScrollView () {
        var num = 0
        imageScrollView.frame = CGRect (x: 0, y: 150, width: view.frame.width, height: 300)
        view.addSubview(imageScrollView)
        imageScrollView.backgroundColor = .white
        
        for i in albomArray[curentItem] {
            
            let image = UIImage (named: i)
            let imageView = UIImageView (frame: CGRect (x: 0, y: 0, width: view.frame.width, height: 300))
            imageView.center.x = view.frame.width / 2 + CGFloat(num) * view.frame.width
            imageView.image = image
            imageView.contentMode = .scaleAspectFit
            imageScrollView.contentSize = CGSize (width: (num + 1) * Int (view.frame.width), height: 300)
            imageScrollView.isScrollEnabled = true
            imageScrollView.isPagingEnabled = true
            imageScrollView.addSubview(imageView)
            num += 1
            
        }
    }
}

