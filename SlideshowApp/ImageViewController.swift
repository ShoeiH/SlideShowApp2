//
//  ImageViewController.swift
//  SlideshowApp
//
//  Created by hirata masakazu on 2017/08/30.
//  Copyright © 2017年 Taro sho. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
     var image: UIImage? = nil

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
              
        imageView.image = image
        
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
