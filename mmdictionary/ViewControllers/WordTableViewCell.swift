//
//  WordTableViewCell.swift
//  mmdictionary
//
//  Created by KHIN SOE LWIN on 2023/08/19.
//

import UIKit

class WordTableViewCell: UITableViewCell {
    @IBOutlet weak var engLabel: UILabel!
    @IBOutlet weak var kindwordLabel: UILabel!
    @IBOutlet weak var mmLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(word: Word) {
        engLabel.text = word.en
        kindwordLabel.text = word.s // is kind of word eg. verb,noun
        mmLabel.text = word.mm
        
    }
}
