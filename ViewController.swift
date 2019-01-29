//
//  ViewController.swift
//  HelloWorld
//
//  Created by Sys Admin on 2019-01-28.
//  Copyright © 2019 hadster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var helloName: UITextField!
    
    @IBAction func helloButton(_ sender: UIButton)
    {
        let name = helloLabel.text!
        helloLabel.text = "Hello \(name)"
    }
    
    
    @IBOutlet weak var usernameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = usernameField.text
    }

}

