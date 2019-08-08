//  Post.swift
//  Facebook
//  Created by Deepson on 8/7/19.
//  Copyright © 2019 Deepson. All rights reserved.

import UIKit

struct Post {
    var createdBy: User
    var timeAgo: String?
    var caption: String?
    var image: UIImage?
    var numberOfLikes: Int?
    var numberOfComments: Int?
    var numberOfShares: Int?


static func fetchPosts()->[Post]{
    var posts = [Post]()
    let duc = User(userName: "Dypson Khadka", profileImage: UIImage(named: "duc"))
    let post1 = Post(createdBy: duc, timeAgo: "1 hrs", caption: "Wise words from Will Smith: The only thing that I see that is distinctly different from me is: I'm not afraid to die on a treadmill. I will not be outworked, period. You might have more talent than me, you might be smarter than me, you might be sexier than me. You might be all of those things. You got it on me in nine categories. But if we get on the treadmill together, there's two things. You're getting off first, or I'm going to die. It's really that simple. Love that. I wish that you'll embrace this mindset in everything that you do. Tonight, when you think about 2017, don't set resolutions but set goals. Trust in your abilities to figure things out. No matter how small you start, start something that matters. With enough time, focus, effort, even resources and mentorship, you will develop new skills and achieve your goals.", image: UIImage(named: "1"), numberOfLikes: 15, numberOfComments: 1, numberOfShares: 2)
    let post2 = Post(createdBy: duc, timeAgo: "2 hrs", caption: "When you work on any thing that matters, it's ok to worry, fear, and be uncomfortable. Just never give up!", image: UIImage(named: "2"), numberOfLikes: 12, numberOfComments: 3, numberOfShares: 3)
    let post3 = Post(createdBy: duc, timeAgo: "3 hrs", caption: "New iOS tutorial is up for developers out in the world: JoinDuc.com/iosapp-fb", image: UIImage(named: "3"), numberOfLikes: 4, numberOfComments: 2, numberOfShares: 3)
    let brendon = User(userName: "Brendon Tylor", profileImage: UIImage(named: "brendon"))
    let post4 = Post(createdBy: brendon, timeAgo: "4hrs", caption: "You are not selfish for desiring a better life. If you appreciate what you have but feel called to the next level, that's something to listen to.", image: UIImage(named: "4"), numberOfLikes: 10, numberOfComments: 11, numberOfShares: 2)
   
    posts.append(post1)
    posts.append(post2)
    posts.append(post3)
    posts.append(post4)
  return posts
 
}
}
struct User {
    var userName: String?
    var profileImage: UIImage?
}
