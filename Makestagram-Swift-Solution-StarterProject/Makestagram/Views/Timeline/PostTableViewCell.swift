//
//  PostTableViewCell.swift
//  Makestagram
//
//  Created by Jaimetted Olivieri on 7/1/15.
//  Copyright (c) 2015 Make School. All rights reserved.
//

import Foundation
import UIKit
import Bond
import Parse
class PostTableViewCell: UITableViewCell{
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var likesIconImageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var moreButton: UIButton!
    
    var post:Post? {
        didSet {
            // 1
            if let post = post {
                //2
                // bind the image of the post to the 'postImage' view
                post.image ->> postImageView
            }
        }
    }
    @IBAction func moreButtonTapped(sender: AnyObject) {
        
    }
    @IBAction func likeButtonTapped(sender: AnyObject) {
        post?.toggleLikePost(PFUser.currentUser()!)
    }
    
}
