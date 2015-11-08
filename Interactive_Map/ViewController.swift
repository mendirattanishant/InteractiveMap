//
//  ViewController.swift
//  Interactive_Map
//
//  Created by Nishant Mendiratta on 11/7/15.
//  Copyright © 2015 Nishant Mendiratta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testRouch: UILabel!
//    @IBOutlet var testtouch: [UILabel]!
    @IBOutlet weak var mapScrollView: UIScrollView!

    @IBOutlet weak var mapImageView: UIImageView!
//    @IBOutlet var testTouch: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mapScrollView.minimumZoomScale = 1
        self.mapScrollView.maximumZoomScale = 5
        
        mapImageView.userInteractionEnabled = true // IMPORTANT
        mapImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "didTapImage:"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func viewForZoomingInScrollView(scrollView: UIScrollView)
        -> UIView {
            return self.mapImageView;
    }
    func didTapImage(gesture: UIGestureRecognizer) {
        let point = gesture.locationInView(gesture.view)
        print(point)
    }

}

