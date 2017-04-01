//
//  PostCell.swift
//  MyHood
//
//  Created by Jernej Hartman on 16/03/2017.
//  Copyright © 2017 Jernej Hartman. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
      self.layer.cornerRadius = 15
       
    }
    
    func configureCell(_ post:Post) {
        titleLbl.text = post.title
        descLbl.text = post.postDesc
        postImg.image = DataService.instance.imageForPath(post.imagePath)
      }

}


