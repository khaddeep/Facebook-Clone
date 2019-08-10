//
//  NewsFeed.swift
//  Facebook
//
//  Created by Deepson on 8/9/19.
//  Copyright © 2019 Deepson. All rights reserved.
//

import UIKit
class NewsFeedViewController: UITableViewController {
    var posts: [Post]?
    var searchController: UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchPosts()
        setupSearchController()
    
    }
    func fetchPosts(){
        posts=Post.fetchPosts()
        tableView.reloadData()
    }
    func setupSearchController(){
        searchController=UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation=false
        searchController.dimsBackgroundDuringPresentation=true
        searchController.searchBar.barStyle = .black
        
        navigationItem.titleView=searchController.searchBar
        definesPresentationContext=true
    }
    }
    // UITableViewSource
    extension NewsFeedViewController{
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if let posts=posts {
                return posts.count
            }
            return 0
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
            cell.post=posts![indexPath.row]
            return cell
        }
    }

