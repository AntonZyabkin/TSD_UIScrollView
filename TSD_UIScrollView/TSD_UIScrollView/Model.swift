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

//создадим элементы интерфейса: "Поиск", строку поиска, "Недавно просмотренные, кнопку "очистить"

func createSearchLabel (vC : UIViewController) {
    let searchLabel = UILabel (frame: CGRect (x: 15, y: 80, width: 150, height: 30))
    searchLabel.text = "Search"
    searchLabel.textColor = .white
    searchLabel.textAlignment = .left
    searchLabel.font = UIFont.boldSystemFont(ofSize: 38)
    vC.view.addSubview(searchLabel)
}

func createResantlyWatchedLabel (vC : UIViewController) {
    let recentlyWatchedLabel = UILabel (frame: CGRect (x: 15, y: 195, width: 300, height: 30))
    recentlyWatchedLabel.text = "Recently watched"
    recentlyWatchedLabel.textColor = .white
    recentlyWatchedLabel.textAlignment = .left
    recentlyWatchedLabel.font = UIFont.boldSystemFont(ofSize: 23)
    vC.view.addSubview(recentlyWatchedLabel)
}

func createSearchTextField (vC: UIViewController) {
    let searchTextField = UITextField (frame: CGRect(x: 15, y: 130, width: 400, height: 35))
    searchTextField.backgroundColor = #colorLiteral(red: 0.1185451327, green: 0.1170155068, blue: 0.1250142976, alpha: 1)
    searchTextField.textColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    let plaseholderAttributed = NSAttributedString (
        string: "Search amount products and stores",
        attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)]
    )
    searchTextField.attributedPlaceholder = plaseholderAttributed
    searchTextField.layer.cornerRadius = 10
    searchTextField.layer.masksToBounds = true
    
    let searchView = UIView (frame: CGRect (x: 0, y: 0, width: 35, height: 35))
    let searchImage = UIImage (named: "magnifyingglass")
    let leftImageView = UIImageView (image: searchImage)
    leftImageView.frame = CGRect (x: 5, y: 5, width: 20, height: 20)
    searchView.addSubview(leftImageView)
    searchTextField.leftView = searchView
    searchTextField.leftViewMode = .always
    
    vC.view.addSubview(searchTextField)
}



//тестовая функция для изучения рекогнайзера
func printItemName (str : String) {
    print (str)
}
