//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by Evan Laird on 2/24/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    let WIDTH: CGFloat = 253
    let HEIGHT: CGFloat = 379

    override func viewDidLoad() {
        super.viewDidLoad()
      
        for var x = 1; x <= 5; x++ {
            let img = UIImage(named: "\(x)")
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 350, WIDTH, HEIGHT)
        }
        
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.height)
        
    }


}

