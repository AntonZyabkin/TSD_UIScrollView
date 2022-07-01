//
//  SearchViewController.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 27.06.2022.
//

import UIKit

class SearchViewController: UIViewController {

    var imageView = UIImageView ()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateItemScrollView (vC: self)
        createBlock (vC: self)
        
    }

    

}
