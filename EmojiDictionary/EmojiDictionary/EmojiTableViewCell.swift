//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by Sys Admin on 2019-01-29.
//  Copyright © 2019 Sys Admin. All rights reserved.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {

    @IBOutlet weak var emojiSymbol: UILabel!
    @IBOutlet weak var emojiName: UILabel!
    @IBOutlet weak var emojiDescription: UILabel!
    
    func update(with emoji: Emoji) {
        emojiSymbol.text = emoji.symbol
        emojiName.text = emoji.name
        emojiDescription.text = emoji.description
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
