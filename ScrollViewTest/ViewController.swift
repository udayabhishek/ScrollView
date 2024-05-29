//
//  ViewController.swift
//  ScrollViewTest
//
//  Created by T0103QU on 29/05/24.
//

import UIKit

class ViewController: UIViewController {
    let arr = ["qqq", "www", "qqr", "ree", "oioio", "zxzx", "fdffg", "ujuju", "oioio", "zxzx", "fdffg", "ujuju"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell
        tableCell.textLabel?.text = arr[indexPath.row]
        return tableCell
    }
}

