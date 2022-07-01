//
//  Model.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 28.06.2022.
//

import UIKit


let curentItem = 0
var itemScrollView = UIScrollView ()
var widthOfItemScrollView = 15
let albosItemArray = ["iphone1", "iwatch1", "case1"]
let titleItemImage = ["Смартфон Apple iPhone 11 64GB, Белый", "Металлический ремешок на руку для смарт часов Apple Watch series 1-6 и Эппл Вотч SE 42-44 mm" , "Чехол силиконовый на айфон 11 с защитой для камеры, прозрачный"]


func createBlock (vC: UIViewController) {
    
    for i in 0..<albosItemArray.count {
        var underView = UIView ()

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
        
        //настраиваем лейбл с описание
        let descriptionLabel = UILabel (frame: CGRect (x: 20, y: 135, width: 110, height: 70))
        descriptionLabel.text = titleItemImage [i]
        descriptionLabel.numberOfLines = 3
        descriptionLabel.font = UIFont (name: "AppleSDGothicNeo-Thin", size: 15)
        descriptionLabel.textColor = .white
        underView.addSubview(descriptionLabel)
        
        
    }
    itemScrollView.contentSize = CGSize (width: widthOfItemScrollView, height: 200)
    itemScrollView.backgroundColor = .clear
}

func  createUnderView () {
    
}

//настроим скроллВью для визуализации айтемов
func generateItemScrollView (vC: UIViewController) {
            
            itemScrollView = UIScrollView (frame: CGRect (x: 0, y: 240, width: vC.view.frame.width, height: 200))
    itemScrollView.backgroundColor = .white
    itemScrollView.contentSize = CGSize (width: 600, height: 200)
            vC.view.addSubview(itemScrollView)
}
