//
//  DetailPost.swift
//  MyHood
//
//  Created by Jernej Hartman on 20/03/2017.
//  Copyright © 2017 Jernej Hartman. All rights reserved.
//

import UIKit

class DetailPostVC: UIViewController {

    @IBOutlet weak var showImg:UIImageView!
    @IBOutlet weak var showDesc: UILabel!
    @IBOutlet weak var showTitle: UILabel!
    
    var selectedCell = Post()
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    showDesc.text = selectedCell.postDesc
    showTitle.text = selectedCell.title
    showImg.image = DataService.instance.imageForPath(selectedCell.imagePath)

    }

    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
