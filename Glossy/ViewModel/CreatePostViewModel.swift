//
//  CreatePostViewModel.swift
//  Glossy
//
//  Created by Hyesung Jeon on 2023/04/04.
//

import Foundation
import FirebaseStorage

public class CreatePostViewModel {
    
    private let storage = Storage.storage().reference()
    
    public func uploadUserPost(model: Post, completion: (Result<URL,Error>) -> Void){
        
    }
    
    public func downloadImage(with reference: String,  completion: (Result<URL,Error>) -> Void){
            
    }
    public enum PostType{
        case photo, video
    }
    public struct Post{
        let postType: PostType
    }
    
}
