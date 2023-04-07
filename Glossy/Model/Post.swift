//
//  Post.swift
//  Glossy
//
//  Created by Hyesung Jeon on 2023/03/31.
//

import Foundation
import FirebaseFirestore

struct Post {
    var id: String
    var userId: String
    var hashTag: String // 해시태그
    var postImage: [String] // 게시물 이미지
    var postVideo: [String] // 게시물 동영상
    var title: String // 게시물 제목
    var text: String // 게시물 본문
    var hits: Int // 조회수
    var geoPoint: GeoPoint // 구매 위치
}
