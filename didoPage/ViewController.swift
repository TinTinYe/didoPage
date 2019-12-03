//
//  ViewController.swift
//  didoPage
//
//  Created by Yvonne on 2019/12/3.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
   
    
    @IBOutlet var images: [UIImageView]!
    
    @IBOutlet weak var scroll: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet var topview: UIView!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = 4
        pageControl.currentPage = 0
        
        scroll.delegate = self
        
    }

 func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
          let currentPage = Int(scroll.contentOffset.x / scroll.frame.size.width)
        pageControl.currentPage = currentPage
      }

 func viewForZooming(in scroll: UIScrollView) -> UIView? {
         for view in scroll.subviews {
            if view.isKind(of: UIView.self) {
              //   print ("ok")
                return view
               
               }
         }
         return nil
     }
    
 
   
    
}

