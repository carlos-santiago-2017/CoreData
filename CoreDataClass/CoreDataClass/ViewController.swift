//
//  ViewController.swift
//  CoreDataClass
//
//  Created by Carlos Santiago Cruz on 1/25/19.
//  Copyright © 2019 Carlos Santiago Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var tasks: [String] = []
 
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "The list"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
    }
    @IBAction func addTaskName(_ sender: UIBarButtonItem) {
        
        
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    
}
