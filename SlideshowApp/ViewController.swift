//
//  ViewController.swift
//  SlideshowApp
//
//  Created by hirata masakazu on 2017/08/17.
//  Copyright © 2017年 Taro sho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer!
    var images : [UIImage] = []
    var index = 0
    
    @IBOutlet weak var playbutton: UIButton!
    
    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad(){
        super.viewDidLoad()
        images.append(UIImage(named: "image1.jpg")!)
        images.append(UIImage(named: "image2.jpg")!)
        images.append(UIImage(named: "image3.jpg")!)
    }
    @IBAction func back(_ sender: Any) {
        
        index -= 1
        
        if index < 0 {
            index = images.count - 1
        }
        imageview.image = images[index]
    }
    
    
    @IBAction func next(_ sender: Any) {
        
        index += 1
        
        if images.count - 1 < index{
            index = 0
        }
        imageview.image = images[index]
    
    }
    
    @IBOutlet weak var Back: UIButton!

    @IBOutlet weak var Next: UIButton!
    
    @IBAction func play(_ sender: Any){
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(slide), userInfo: nil, repeats: true)
            
            Back.isEnabled = false
            Next.isEnabled = false
            
            playbutton.setTitle("停止", for: .normal)
            
            
        }
        else {
            self.timer.invalidate()
            self.timer = nil
            
            playbutton.setTitle("再生", for: .normal)
            
            Back.isEnabled = true
            Next.isEnabled = true
        }
        
    }
    func slide(){
        index += 1
        
        if images.count - 1 < index{
            index = 0
        }
        imageview.image = images[index]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        
        let imageViewController:ImageViewController = segue.destination as! ImageViewController
        
        imageViewController.image = images[index]
        
        
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }
    
}
