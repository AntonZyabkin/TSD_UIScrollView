//
//  TabBarViewController.swift
//  TSD_UIScrollView
//
//  Created by Anton Zyabkin on 27.06.2022.
//

import UIKit

class TabBarViewController: UITabBarController  {
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        generateTabBar ()
        setTabBarAppearance ()
        view.backgroundColor = .black
        navigationItem.hidesBackButton = true
        navigationItem.setHidesBackButton(true, animated: true)
    }

    
    //настроим иконки табАйтем на вьюКонтроллерах и добавим сами контроллеры в ТабБарКОнтроллер
    private func generateTabBar () {
        
        viewControllers = [
            generateVC(vC: BuyViewController(),
                       title: "Buy",
                       image: UIImage(systemName: "laptopcomputer.and.iphone")),
            generateVC(vC: PearsonViewController(),
                       title: "For you",
                       image: UIImage(systemName: "person.circle")),
            generateVC(vC: SearchViewController(),
                       title: "Search",
                       image: UIImage(systemName: "magnifyingglass")),
            generateVC(vC: ViewController(),
                       title: "Buy",
                       image: UIImage(systemName: "bag"))]

    }
    
    //функция для настройки ВьюКонтроллеров
    private func generateVC (vC: UIViewController,
                             title: String,
                             image: UIImage?) -> UIViewController {
        
        vC.tabBarItem.title = title
        vC.tabBarItem.image = image
        
        return vC
    }
    
    
    //функция для настройки цветов ТабБарКонтроллера
    private func setTabBarAppearance () {
        
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemLight
    }
    
    

}
