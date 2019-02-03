//
//  ViewController.swift
//  SpacePhoto
//
//  Created by Sys Admin on 2019-01-29.
//  Copyright © 2019 Sys Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var copyright: UILabel!
    let photoInfoController = PhotoInfoController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoInfoController.fetchPhotoInfo { (photoInfo) in
            DispatchQueue.main.async {
                self.desc.text = photoInfo?.description
                self.title = photoInfo?.title
                if let copyright = photoInfo?.copyright {
                    self.copyright.text = copyright
                }
                else {
                    self.copyright.isHidden = true
                }
            }
        }
    }
}

