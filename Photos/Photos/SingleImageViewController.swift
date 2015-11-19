//
//  SingleImageViewController.swift
//  Photos
//
//  Created by 李子腾 on 11/18/15.
//  Copyright © 2015 iOS DeCal. All rights reserved.
//

import UIKit

class SingleImageViewController: UIViewController {

    @IBOutlet var userLabel: UILabel!
    
    @IBOutlet var likeLabel: UILabel!
    
    @IBOutlet var likeButton: UIButton!
    
    @IBOutlet var imageView: UIImageView!
    
    var liked = false
    
    var photo: Photo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPhoto(photo!)
        userLabel.text = "Posted by \(photo.username)"
        likeLabel.text = "\(photo.likes) likes"
        if liked {
            likeButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        } else {
            likeButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        }
        
        likeButton.addTarget(self, action: "likePressed", forControlEvents: .TouchUpInside)
        
    }
    
    func likePressed() {
            likeButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)

        liked = true
    }
    
    func loadPhoto(photo: Photo) {
        if let url = NSURL(string: photo.url) {
            if let data = NSData(contentsOfURL: url) {
                imageView.image = UIImage(data: data)
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
