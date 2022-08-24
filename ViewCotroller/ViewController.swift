//
//  ViewController.swift
//  DemoRX
//
//  Created by V000315 on 24/08/2022.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController, UITableViewDelegate {
    
    
    var dataItem = Observable.just([Food(name: "potato", image: "potato"),
                                    Food(name: "meat", image: "meat"),
                                    Food(name: "hambeger", image: "hambeger"),
                                    Food(name: "egg", image: "egg"),
                                    Food(name: "bread", image: "bread")])
    var disposeBag = DisposeBag()
    @IBOutlet weak var tbvDemo: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
        tbvDemo.register(UINib(nibName: "FoodTableViewCell", bundle: nil), forCellReuseIdentifier: "FoodTableViewCell")
        dataItem.bind(to: tbvDemo
            .rx
            .items(cellIdentifier: "myCell", cellType: FoodTableViewCell.self)){
                (tv, dataItem, cell) in
                print(dataItem)
                cell.lbFood.text = dataItem.name
                cell.imageFood?.image = UIImage(named: dataItem.image)
            }.disposed(by: disposeBag)
    }


}

