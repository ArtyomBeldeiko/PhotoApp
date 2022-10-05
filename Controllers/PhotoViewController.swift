//
//  PhotoViewController.swift
//  PhotoApp
//
//  Created by Artyom Beldeiko on 12.02.22.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage!
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
        
    }
    
    @IBAction func shareButtonClicked(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Succesful")
            }
        }
        
        present(shareController, animated: true, completion: nil)
        
    }
    
}
