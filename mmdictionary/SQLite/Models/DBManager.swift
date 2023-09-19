//
//  DBManager.swift
//  mmdictionary
//
//  Created by KHIN SOE LWIN on 2023/08/19.
//

import Foundation

struct DBManager {
    //properties
    private var db = SQLiteDB.shared
    
    //methods
    
    func loadData()-> [Word] {
        //var words = [Word]()
        var words: [Word] = []
        _ = db.open()
        let cmd = "SELECT * FROM dictionary"
        let rows: [[String : Any]] = db.query(sql: cmd)
        for row in rows {
            let id = (row["_id"] as? Int) ?? 0
            let en = (row["en"] as? String) ?? ""
            let mm = (row["mm"] as? String) ?? ""
            let s = (row["s"] as? String) ?? ""
            let word = Word(id: id, en: en, mm: mm, s: s)
            words.append(word)
        }
        //[String : Any]]
        print("Total word count:\(words.count)")
        db.closeDB()
        return words
        
    }
}
