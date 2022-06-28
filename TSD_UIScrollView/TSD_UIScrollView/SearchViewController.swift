//
//  SearchViewController.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 27.06.2022.
//

import UIKit

class SearchViewController: UIViewController {

    var imageView = UIImageView ()
    var itemScrollView = UIScrollView ()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateItemScrollView ()
    }

    
    
    //настроим скроллВью для визуализации айтемов
    func generateItemScrollView () {
        itemScrollView = UIScrollView (frame: CGRect (x: 0, y: 240, width: view.frame.width, height: 200))
        itemScrollView.backgroundColor = .white
        itemScrollView.contentSize = CGSize (width: 600, height: 200)
        view.addSubview(itemScrollView)
    }
}
