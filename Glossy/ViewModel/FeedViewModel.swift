//
//  FeedViewModel.swift
//  Glossy
//
//  Created by Hyesung Jeon on 2023/04/04.
//

import Foundation
import FirebaseFirestore

// firestore에서 데이터를 가져온다
// post 객체를 만들어주고 posts 배열에 넣어준다
class FeedViewModel {
    
    // 게시물들
    var posts: [Post] = []
    
    // FireStore 참조 객체
    let database = Firestore.firestore()
    


}
