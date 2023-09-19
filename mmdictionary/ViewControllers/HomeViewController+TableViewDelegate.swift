//
//  HomeViewController+TableViewDelegate.swift
//  mmdictionary
//
//  Created by KHIN SOE LWIN on 2023/08/19.
//

import Foundation
import UIKit

extension HomeViewController: UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        isFiler = false
        filterWords = []
        tableView.reloadData()
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if(searchText != ""){
            isFiler = true
            filterWords = words.filter({ word in
                word.en.lowercased().contains(searchText.lowercased())
            })
        }else {
            isFiler = false
            filterWords = []
        }
        tableView.reloadData()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isFiler ? filterWords.count: words.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:WordTableViewCell?
        cell = tableView.dequeueReusableCell(withIdentifier: "wordcellid") as! WordTableViewCell
        let word = isFiler ? filterWords[indexPath.row] : words[indexPath.row]
        cell?.configure(word: word)
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height / 10
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print("Selecting"\(indexPath.row))
    }
}
