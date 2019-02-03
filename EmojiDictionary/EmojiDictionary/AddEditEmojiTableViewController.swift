//
//  AddEditEmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by Sys Admin on 2019-01-29.
//  Copyright © 2019 Sys Admin. All rights reserved.
//

import UIKit

class AddEditEmojiTableViewController: UITableViewController {
    @IBOutlet weak var symbolTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descTextField: UITextField!
    @IBOutlet weak var usageTextField: UITextField!
    
    var emoji : Emoji?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let emoji = emoji{
            symbolTextField.text = emoji.symbol
            nameTextField.text = emoji.name
            descTextField.text = emoji.description
            usageTextField.text = emoji.usage
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard segue.identifier == "saveUnwind" else {return}
        
        let symbol = symbolTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descTextField.text ?? ""
        let usage = usageTextField.text ?? ""
        
        emoji = Emoji(symbol: symbol, name: name, description: description, usage: usage)
    }

}
