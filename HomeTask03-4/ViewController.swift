//
//  ViewController.swift
//  HomeTask03-4
//
//  Created by Sonun on 17/3/23.
//

import UIKit
import IQKeyboardManagerSwift

class ViewController: UIViewController {
    
    private var collectionList: [Furniture] = []
    
    @IBOutlet weak var mainTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
        initData()
        
        
   func initData () {
       collectionList = [Furniture(id: 1, image: "furniture1", nameTitle: "Furniture", subtitle: "kiki", star: 4, price: 230, roomType: "Living room", color: "yellow", material: "Cotton", dimensions: "23 x 34", weight: "30"),
            Furniture(id: 1, image: "furniture2", nameTitle: "Furniture", subtitle: "kiki", star: 4, price: 230, roomType: "Kitchen", color: "red", material: "Cotton", dimensions: "23 x 34", weight: "30"),
            Furniture(id: 1, image: "furniture3", nameTitle: "Mirror", subtitle: "kiki", star: 4, price: 230, roomType: "Bathroom", color: "blue", material: "Cotton", dimensions: "23 x 34", weight: "30"),
            Furniture(id: 1, image: "furniture4", nameTitle: "Mirror", subtitle: "kiki", star: 4, price: 230, roomType: "Bathroom", color: "blue", material: "Cotton", dimensions: "23 x 34", weight: "30")]
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        collectionList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        as! CollectionTableViewCell
        cell.initCell(image: collectionList[indexPath.row].image, title:collectionList[indexPath.row].nameTitle,
                      quantity: collectionList[indexPath.row].subtitle )
        return cell
        
    }
}
