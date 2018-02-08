//
//  ViewController.swift
//  aging
//
//  Created by Liam He on 1/12/18.
//  Copyright © 2018 Liam He. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource{
                                        // ||||| by putting th UItableViewDataSource you do not need to make it an extention function

    @IBOutlet weak var tableView: UITableView!

    let people = ["Liam","Andy","Jeff","Ben","Emily","Chaoi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath)
        let randomAge = arc4random_uniform(91) + 5;

        cell.textLabel?.text = people[indexPath.row]
        cell.detailTextLabel?.text = "\(String(randomAge)) Years Old"

        return cell
    }



}

//extension ViewController: UITableViewDataSource{
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return people.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath)
//        let randomAge = arc4random_uniform(91) + 5;
//
//        cell.textLabel?.text = people[indexPath.row]
//        cell.detailTextLabel?.text = "\(String(randomAge)) Years Old"
//
//        return cell
//    }
//}

