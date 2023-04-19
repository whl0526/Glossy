//
//  FeedViewController.swift
//  Glossy
//
//  Created by Hyesung Jeon on 2023/03/31.
//

import UIKit

struct Test {
    let title: String
}

extension Test {
    static var data = [
        Test(title: "MBTI"),
        Test(title: "에고그램 테스트"),
        Test(title: "mgram"),
        Test(title: "애착유형 테스트"),
        Test(title: "EQ 테스트"),
        Test(title: "연애 능력 테스트"),
        Test(title: "연락 유형 테스트"),
        Test(title: "결혼상대 테스트"),
    ]
}

class FeedViewController: UIViewController {
    
    let box: UIView = {
        let view = UIView()
        return view
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        return cv
    }()
    
    let cellName = "CustomFeedCollectionViewCell"
    let cellReuseIdentifier = "customFeedCell"
    let testList = Test.data
    let sectionInsets = UIEdgeInsets(top: 10, left: 10, bottom: 80, right: 10)

    private func registerXib() {
        let nibName = UINib(nibName: cellName, bundle: nil)
        collectionView.register(nibName, forCellWithReuseIdentifier: cellReuseIdentifier)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        self.view.addSubview(collectionView)
        self.registerXib()
        
        collectionView.snp.makeConstraints {
            $0.height.width.equalToSuperview()
            $0.top.leading.bottom.trailing.equalToSuperview()
        }
        
        // Do any additional setup after loading the view.
    }
    

}

extension FeedViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as?
                   CustomFeedCollectionViewCell else { return UICollectionViewCell() }
        
        let cellData = self.testList[indexPath.row]
        
        cell.userNickName?.text = cellData.title
        cell.profileImage.image = UIImage(named: "default_profile_image")
        
        
        
        return cell
    }
}

extension FeedViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.bounds.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.bottom
    }
}
