//
//  SearchViewController.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 27.06.2022.
//

import UIKit

class SearchViewController: UIViewController {
//    var curent

    var imageView = UIImageView ()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateItemScrollView (vC: self)
        createBlock (vC: self)
        createSearchLabel(vC: self)
        createResantlyWatchedLabel (vC :self)
        createSearchTextField (vC: self)
    }



    func createBlock (vC: UIViewController) {
        
        for i in 0..<albosItemArray.count {
            var underView = UIView ()
            curentItem = i
            // настраиваем ширину СкроллВью
            widthOfItemScrollView += 165
            
            //настраиваем подложку айтема и добавляем ее на СкроллВЬю
            underView = UIView (frame: CGRect (x: (15 + i * 165), y: 0, width: 150, height: 200))
            underView.backgroundColor = #colorLiteral(red: 0.09435228258, green: 0.08189914376, blue: 0.1025743857, alpha: 1)
            underView.layer.cornerRadius = 20
            underView.layer.masksToBounds = true
            itemScrollView.addSubview(underView)
            
            //настраиваем и добавляем картинки айтемов
            let imageItem = UIImage (named: albosItemArray[i])
            let imageViewItem = UIImageView (frame: CGRect (x: 15, y: 15, width: 120, height: 120))
            imageViewItem.image = imageItem
            imageViewItem.contentMode = .scaleAspectFill
            imageViewItem.layer.masksToBounds = true
            imageViewItem.layer.cornerRadius = 10
            underView.addSubview(imageViewItem)
            
            //настраиваем лейбл с описание айтема
            let descriptionLabel = UILabel (frame: CGRect (x: 20, y: 135, width: 110, height: 70))
            descriptionLabel.text = titleItemImage [i]
            descriptionLabel.numberOfLines = 3
            descriptionLabel.font = UIFont.boldSystemFont(ofSize: 15)
            descriptionLabel.textColor = .white
            underView.addSubview(descriptionLabel)
            
            //настраиваем подложку айтема и добавляем ее на СкроллВЬю
            let coverView = UIView (frame: CGRect (x: (15 + i * 165), y: 0, width: 150, height: 200))
            coverView.backgroundColor = .clear
            coverView.layer.cornerRadius = 20
            coverView.layer.masksToBounds = true
            itemScrollView.addSubview(coverView)
            
            //созздадим рекогнайзер и функцию для перехода на следующее вью

            let recognizerView  = UIView (frame: CGRect (x: (15 + i * 165), y: 0, width: 150, height: 200))
            recognizerView.backgroundColor = .clear
            recognizerView.layer.cornerRadius = 20
            recognizerView.layer.masksToBounds = true
            itemScrollView.addSubview(recognizerView)
            recognizerView.isUserInteractionEnabled = true
            
            //создаем рекогнайзер и запускаем его
            var itemRecognizer = UITapGestureRecognizer ()

            switch i {
            case 0: itemRecognizer = UITapGestureRecognizer (target: vC, action: #selector(printItemName1))
            case 1: itemRecognizer = UITapGestureRecognizer (target: vC, action: #selector(printItemName2))
            case 2 : itemRecognizer = UITapGestureRecognizer (target: vC, action: #selector(printItemName3))
            default: itemRecognizer = UITapGestureRecognizer (target: vC, action: #selector(printItemName1))

            }
            recognizerView.addGestureRecognizer(itemRecognizer)
        }
        itemScrollView.contentSize = CGSize (width: widthOfItemScrollView, height: 200)
        itemScrollView.backgroundColor = .clear
    }
    
    
    @objc func printItemName1 () {
        curentItem = 0
        goToItemViewController ()
    }
    
    @objc func printItemName2 () {
        curentItem = 1
        goToItemViewController ()
    }
    
    @objc func printItemName3 () {
        curentItem = 2
        goToItemViewController ()
    }
    
    func goToItemViewController () {
        let itemViewController = ViewController ()
        navigationController?.pushViewController(itemViewController, animated: true)
    }
}
