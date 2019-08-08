//  PostCell.swift
//  Facebook
//  Created by Deepson on 8/7/19.
//  Copyright © 2019 Deepson. All rights reserved.
import UIKit
class PostCell: UITableViewCell {

    @IBOutlet weak var userName:UILabel!
    @IBOutlet weak var timeAgoLabel:UILabel!
    @IBOutlet weak var captionLabel:UILabel!
    @IBOutlet weak var profileImageView:UIImageView!
    @IBOutlet weak var postStats:UILabel!
    @IBOutlet weak var postImage:UIImageView!
    
    var post: Post!{
        didSet{
            UpdateUI()
        }
    }
    func UpdateUI(){
        userName.text=post.createdBy.userName
        timeAgoLabel.text=post.timeAgo
        captionLabel.text=post.caption
        profileImageView.image=post.createdBy.profileImage
        postStats.text="\(post.numberOfLikes!) Likes   \(post.numberOfComments!) Comments   \(post.numberOfShares!) Shares"
        postImage.image=post.image
    }
}
