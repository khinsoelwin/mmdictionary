//
//  ViewController.swift
//  mmdictionary
//
//  Created by KHIN SOE LWIN on 2023/08/19.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchbar: UISearchBar!
 ///properties
    var dbManager = DBManager()
    var words: [Word] = []
    var filterWords: [Word] = []
    var isFiler = false // Flg
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        searchbar.delegate = self
        words = dbManager.loadData()
    }


}

