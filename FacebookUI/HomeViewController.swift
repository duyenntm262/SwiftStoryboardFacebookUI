//
//  ViewController.swift
//  FacebookUI
//
//  Created by Din Din on 26/03/2024.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var storyImage:[String] = ["person", "person2", "person3", "person5", "person", "person2", "person3", "person5"]
    var avatarImage:[String] =  ["img1", "img2", "img3", "img4", "img1", "img2", "img3", "img4"]
    var lblName:[String] =  ["User 1", "User 2", "User 3", "User 4", "User 5", "User 6", "User 7", "User 8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.showsHorizontalScrollIndicator = false
                
    }

}

extension HomeViewController: UICalendarViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return storyImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
        
        cell.storyImage.image = UIImage(named: storyImage[indexPath.row])
        cell.avatarImage.image = UIImage(named: avatarImage[indexPath.row])
        cell.lblName.text = lblName[indexPath.row]
        
        cell.contentView.layer.cornerRadius = 20
        cell.contentView.layer.masksToBounds = true
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = 123
        let height = 185
        return CGSize(width: width, height: height)
    }
}

    
