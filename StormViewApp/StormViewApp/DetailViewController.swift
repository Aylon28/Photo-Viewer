//
//  DetailViewController.swift
//  StormViewApp
//
//  Created on 26.09.22.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedImage: String?
    var titleNumber: (number: Int, of: Int)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let titleText = titleNumber {
            title = "Picture \(titleText.number) of \(titleText.of)"
        } else {
            title = selectedImage
        }
        
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnTap = false
    }
    

}
