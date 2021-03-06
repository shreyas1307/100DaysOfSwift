//
//  DetailViewController.swift
//  Project 1
//
//  Created by Shreyas on 29/04/20.
//  Copyright © 2020 Shreyas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var ImageView: UIImageView!
    var selectedImage: String?
    var currentIndex: Int?
    var totalItems: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture \(currentIndex ?? 0) of \(totalItems ?? 0)"
        navigationItem.largeTitleDisplayMode = .never
        if let imageToLoad = selectedImage {
            ImageView.image = UIImage(named: imageToLoad)
        }
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
