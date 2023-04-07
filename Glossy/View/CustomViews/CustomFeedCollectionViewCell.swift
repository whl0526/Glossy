//
//  CustomFeedCollectionViewCell.swift
//  Glossy
//
//  Created by Hyesung Jeon on 2023/04/06.
//

import UIKit

class CustomFeedCollectionViewCell: UICollectionViewCell {

    
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userNickName: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var goCommentViewButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var postDescription: UILabel!
    @IBOutlet weak var goCommentLabel: UILabel!
    @IBOutlet weak var writeCommentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
