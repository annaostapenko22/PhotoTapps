//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by pc on 3/11/21.
//  Copyright © 2021 pc. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image
    }
    
    
    
    @IBAction func shareImageAction(_ sender: Any) {
        let shareContoller = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareContoller.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("success")
            }
            
        }
        
        present(shareContoller, animated: true, completion: nil)
    }
    
}
