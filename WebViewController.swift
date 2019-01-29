//
//  WebViewController.swift
//  HelloWorld
//
//  Created by Sys Admin on 2019-01-28.
//  Copyright © 2019 hadster. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webOutlet: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let baseURL = URL(string: "https://www.apple.com")
        let webRequest = URLRequest(url: baseURL!)
        webOutlet.load(webRequest)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
