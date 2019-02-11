//
//  ViewController.swift
//  ISpy
//
//  Created by Richard Castagna on 2/11/19.
//  Copyright © 2019 Richard Castagna. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        updateZoomFor(size: view.bounds.size)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func updateZoomFor(size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let scale = min(widthScale, heightScale)
        
        scrollView.minimumZoomScale = scale
    }

}

