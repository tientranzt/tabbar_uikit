//
//  TableViewController.swift
//  learn_uikit
//
//  Created by tientran on 02/01/2021.
//

import UIKit

private let customCellReusable : String  = "CustomCell"

class TableViewController: UIViewController {
    
    let tableView =  UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableView.anchor(top:view.topAnchor, right: view.rightAnchor, left: view.leftAnchor)
        tableView.centerYAnchor(inView: view)
        tableView.register(CustomTableCell.self, forCellReuseIdentifier: customCellReusable)
        tableView.rowHeight = 50
    }
}


extension TableViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: customCellReusable , for: indexPath) as! CustomTableCell
        cell.setLabel1 = "title \(indexPath.row)"
        cell.setLabel2 = "description \(indexPath.row)"
        return cell
    }
    
    
}
