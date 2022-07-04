//
//  Model.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 28.06.2022.
//

import UIKit


var curentItem = 0
var itemScrollView = UIScrollView ()
var widthOfItemScrollView = 15
let albosItemArray = ["iphone1", "iwatch1", "case1"]
let titleItemImage = ["Смартфон Apple iPhone 11 64GB, Белый", "Металлический ремешок на руку для смарт часов Apple Watch series 1-6 и Эппл Вотч SE 42-44 mm" , "Чехол силиконовый на айфон 11 с защитой для камеры, прозрачный"]


let caseArray = ["case1", "case2", "case3"]
let iphoneArray = ["iphone1", "iphone2", "iphone3", "iphone4", "iphone5", "iphone6"]
let iwatch1Array = ["iwatch1", "iwatch2", "iwatch3", "iwatch4"]
let albomArray = [iphoneArray, iwatch1Array, caseArray]

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

