//
//  ViewController.swift
//  ScrollView
//
//  Created by Sahadev Tandur on 21/08/17.
//  Copyright © 2017 Sahadev Tandur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Scroll: UIScrollView!
    
    var Images = [UIImageView]()
    var ContentWidth: CGFloat = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
            }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            let ImageView = UIImageView(image: image)
            Images.append(ImageView)
            var newX: CGFloat = 0.0
            
            newX = (Scroll.frame.size.width/2) + (Scroll.frame.size.width * CGFloat(x))
    
            ContentWidth = Scroll.frame.size.width * CGFloat(x+1)
            Scroll.addSubview(ImageView)
            
            ImageView.frame = CGRect(x: newX - 50, y: (Scroll.frame.size.height / 2) - 50, width: 100, height: 100)
            
        }
        Scroll.contentSize = CGSize(width: ContentWidth, height: Scroll.frame.size.height)
        Scroll.clipsToBounds = false

    }
}

