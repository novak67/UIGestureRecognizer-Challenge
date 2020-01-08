//
//  ViewController.swift
//  UIGestureRecognizerChallenge
//
//  Created by Wade Sellers on 3/11/19.
//  Copyright (c) 2019 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    /***************************************************
     * Start Your Code Here For MVP
     ***************************************************/
    @IBAction func onViewMoved(_ sender: UIPanGestureRecognizer)
    {
        let point = sender.location(in: view)
        myView.center = point
    }
    /***************************************************
     * End Your Code Here For MVP
     ***************************************************/
    
    
    /***************************************************
     * Start Your Code Here For Stretch #1
     ***************************************************/
    @IBAction func onViewPinched(_ sender: UIPinchGestureRecognizer)
    {
        let scale = sender.scale
        myView.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    /***************************************************
     * End Your Code Here For Stretch #1
     ***************************************************/
    
    
    /***************************************************
     * Start Your Code Here For Stretch #2
     ***************************************************/
    @IBAction func onViewTapped(_ sender: UITapGestureRecognizer) {
        if myView.tag == 0
        {
            myView.backgroundColor = .red
            myView.tag = 1
        }
        else
        {
            myView.backgroundColor = .blue
            myView.tag = 0
        }
    }
    /***************************************************
     * End Your Code Here For Stretch #2
     ***************************************************/
    
    
    /***************************************************
     * Start Your Code Here For Stretch #3
     ***************************************************/
    @IBAction func onSwipeRight(_ sender: UISwipeGestureRecognizer) {
        myView.alpha += 0.1
    }
    
    @IBAction func onSwipeLeft(_ sender: UISwipeGestureRecognizer) {
        myView.alpha -= 0.1
    }
    /***************************************************
     * End Your Code Here For Stretch #3
     ***************************************************/
    
    
    /***************************************************
     * Start Your Code Here For Stretch #4
     ***************************************************/
    
    
    /***************************************************
     * End Your Code Here For Stretch #4
     ***************************************************/
}

