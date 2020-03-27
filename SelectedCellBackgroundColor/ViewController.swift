//
//  ViewController.swift
//  CellBackgroundColor
//
//  Created by Amirreza Eghtedari on 7/1/1399AP.
//  Copyright © 1399 AP Amirreza Eghtedari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let carsModel = ["Volkswagen",
                     "Mercedes",
                     "Ford",
                     "BMW",
                     "Audi",
                     "Opel",
                     "Skoda",
                     "Seat",
                     "Renault",
                     "Hyundai",
                     "Fiat",
                     "Toyota",
                     "Dacia",
                     "Peugeot",
                     "Mazda",
                     "Kia",
                     "Citroen",
                     "Volvo",
                     "Mitsubishi",
                     "Mini",
                     "Smart",]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 85.0
        
        navigationItem.rightBarButtonItem = editButtonItem
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        
        super.setEditing(editing, animated: animated)
        
        tableView.isEditing = editing
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return carsModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell") as? CarCell else {
            fatalError("There is not such cell in storyboard!")
        }
        
        cell.nameLabel.text = carsModel[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Best selling car brands in Germany, 2019"
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return UITableView.automaticDimension
    }
    
}
