//
//  SearchViewController.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 27.06.2022.
//

import UIKit

class SearchViewController: UIViewController {

    var scrollView = UIScrollView ()
    var imageView = UIImageView ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        scrollView.backgroundColor = #colorLiteral(red: 0.9399933023, green: 0.9906174686, blue: 1, alpha: 1)
//        scrollView.isScrollEnabled = true
        
        let imagetest = UIImage (named: "Image")
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 200, width: 300, height: 300))
//        scrollView = UIScrollView(frame: self.view.bounds)
        imageView = UIImageView(image: imagetest)
        scrollView.addSubview(imageView)
        scrollView.contentSize = self.scrollView.bounds.size
        view.addSubview(scrollView)
    }


}
