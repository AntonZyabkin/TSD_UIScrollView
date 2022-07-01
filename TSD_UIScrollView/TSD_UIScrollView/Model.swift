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
    var underView = UIView ()
    
    for i in 0..<albosItemArray.count {

        widthOfItemScrollView += 170
        underView = UIView (frame: CGRect (x: (15 + i * 170), y: 0, width: 155, height: 200))
        underView.backgroundColor = #colorLiteral(red: 0.09435228258, green: 0.08189914376, blue: 0.1025743857, alpha: 1)
        underView.layer.cornerRadius = 20
        underView.layer.masksToBounds = true
        
        itemScrollView.addSubview(underView)
    }
    itemScrollView.contentSize = CGSize (width: widthOfItemScrollView, height: 200)
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
