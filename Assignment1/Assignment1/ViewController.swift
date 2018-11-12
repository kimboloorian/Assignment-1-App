//
//  ViewController.swift
//  Assignment1
//
//  Created by kb15abp on 05/11/2018.
//  Copyright © 2018 KBStudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var treeImage: UIImageView!
    @IBOutlet weak var tree2Image: UIImageView!
    
    @IBOutlet weak var roadImage: UIImageView!
    
    @IBOutlet weak var cloudImage: UIImageView!
    @IBOutlet weak var cloud2Image: UIImageView!
    
    @IBOutlet weak var planeImage: DraggedImageView!
    
    var birdAnimator: UIDynamicAnimator!
    var birdViewBehavior: UIDynamicItemBehavior!
    
    let birdView = UIImageView(image: nil)

    
    let W = UIScreen.main.bounds.width
    let H = UIScreen.main.bounds.height
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        var imageArrayRoad: [UIImage]!
        
        imageArrayRoad = [UIImage(named: "road1.png")!,
                      UIImage(named: "road2.png")!,
                      UIImage(named: "road3.png")!,
                      UIImage(named: "road4.png")!,
                      UIImage(named: "road5.png")!,
                      UIImage(named: "road6.png")!,
                      UIImage(named: "road7.png")!,
                      UIImage(named: "road8.png")!,
                      UIImage(named: "road9.png")!,
                      UIImage(named: "road10.png")!,
                      UIImage(named: "road11.png")!,
                      UIImage(named: "road12.png")!,
                      UIImage(named: "road13.png")!,
                      UIImage(named: "road14.png")!,
                      UIImage(named: "road15.png")!,
                      UIImage(named: "road16.png")!,
                      UIImage(named: "road17.png")!,
                      UIImage(named: "road18.png")!,
                      UIImage(named: "road19.png")!]
        
        
        roadImage.image = UIImage.animatedImage(with: imageArrayRoad, duration: 0.7)
        
        self.roadImage.frame.size.width = W
        self.roadImage.frame.size.height = H
        
        
        var imageArrayPlane: [UIImage]!
        
        imageArrayPlane = [UIImage(named: "plane1.png")!,
                          UIImage(named: "plane2.png")!,
                          UIImage(named: "plane3.png")!,
                          UIImage(named: "plane4.png")!,
                          UIImage(named: "plane5.png")!,
                          UIImage(named: "plane6.png")!,
                          UIImage(named: "plane7.png")!,
                          UIImage(named: "plane8.png")!,
                          UIImage(named: "plane9.png")!,
                          UIImage(named: "plane10.png")!,
                          UIImage(named: "plane11.png")!,
                          UIImage(named: "plane12.png")!,
                          UIImage(named: "plane13.png")!,
                          UIImage(named: "plane14.png")!,
                          UIImage(named: "plane15.png")!,]
        
        
        planeImage.image = UIImage.animatedImage(with: imageArrayPlane, duration: 1)
        
        
        UIView.animate(withDuration: 30, delay: 0.0, options: [UIViewAnimationOptions.repeat, .curveLinear], animations:
            {
                self.treeImage.center.x += self.view.bounds.width
                self.tree2Image.center.x += self.view.bounds.width
                
                
        }, completion: nil
        )
        
        
        UIView.animate(withDuration: 60, delay: 0.0, options: [UIViewAnimationOptions.repeat, .curveLinear], animations:
            {
                self.cloudImage.center.x += self.view.bounds.width
                self.cloud2Image.center.x += self.view.bounds.width
    
                
        }, completion: nil
        )

        
    
       // birdView.frame = CGRect(x: W, y: 150, width: 60, height: 60)

    
        var imageArrayBird: [UIImage]!
        
       // var birdAnimator: UIDynamicAnimator!
       // var birdViewBehavior: UIDynamicItemBehavior!
    
        imageArrayBird = [UIImage(named: "bird1.png")!,
                          UIImage(named: "bird2.png")!,
                          UIImage(named: "bird3.png")!,
                          UIImage(named: "bird4.png")!,
                          UIImage(named: "bird5.png")!,
                          UIImage(named: "bird6.png")!,
                          UIImage(named: "bird7.png")!,
                          UIImage(named: "bird8.png")!,
                          UIImage(named: "bird9.png")!,
                          UIImage(named: "bird10.png")!,]
        
        birdView.image = UIImage.animatedImage(with: imageArrayBird, duration: 1)
        
        self.view.addSubview(birdView)

        
        birdAnimator = UIDynamicAnimator(referenceView: self.view)
        
        birdViewBehavior = UIDynamicItemBehavior(items: [birdView])
        
        birdViewBehavior.addLinearVelocity = CGRect(x: W, y: 150, width: 60, height: 60)
        
        birdAnimator.addBehavior(birdViewBehavior)

        
        
        //{ (_) in
            
          //  UIView.animate(withDuration: 5, delay: 1, options: [.curveEaseIn], animations: {
           //     birdView.frame.origin.x -= birdView.frame.width
           // })
            
         //birdView.image = imageArrayBird[arc4random_uniform(9) + 1]
        //birdView.image = UIImage(named: "bird1.png")!

 
    
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
        
}


