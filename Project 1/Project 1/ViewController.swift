//
//  ViewController.swift
//  Project 1
//
//  Created by Shreyas on 27/04/20.
//  Copyright © 2020 Shreyas. All rights reserved.
//

// After Project tutorial done. These are challenges
// Challenge 1 - Use Interface Builder to select the text label inside your table view cell and adjust its size to something larger – experiment and see what looks good.
// Challenge 2 - In your main table view, show the image names in sorted order, so “nssl0033.jpg” comes before “nssl0034.jpg”.
// Challenge 3 - Rather than show image names in the detail title bar, show “Picture X of Y”, where Y is the total number of images and X is the selected picture’s position in the array. Make sure you count from 1 rather than 0.

import UIKit

class ViewController: UITableViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Storm Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        do {
            let items = try fm.contentsOfDirectory(atPath: path)
            
            for item in items {
                if item == "Content" {
                    let subDirectory = path + "/" + item
                    do {
                        let contentsOfSubDirectory = try fm.contentsOfDirectory(atPath: subDirectory)
                        
                        for images in contentsOfSubDirectory {
                            if images.hasPrefix("nssl") {
                                pictures.append(images)
                            }
                        }
                        pictures.sort()
                    } catch {
                        print("No items found in subdirectory")
                    }
                }
            }
        } catch {
            print("Sorry error has occured!")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            print(pictures.count)
            vc.currentIndex = indexPath.row + 1
            vc.totalItems = pictures.count
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

