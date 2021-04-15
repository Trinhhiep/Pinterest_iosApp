//
//  ViewController.swift
//  Pinterest
//
//  Created by Admin on 14/04/2021.
//

import UIKit

class ViewController: UIViewController{
    //MARK : Outlet
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
// MARK : Properties
    let images = [UIImage(named: "image-1"),UIImage(named: "image-2"),UIImage(named: "image-3"),UIImage(named: "image-4"),UIImage(named: "image-5"),UIImage(named: "image-6"),UIImage(named: "image-7"),UIImage(named: "image-8"),UIImage(named: "image-9"),UIImage(named: "image-10"),UIImage(named: "image-11"),UIImage(named: "image-12"),UIImage(named: "image-13"),UIImage(named: "image-14"),UIImage(named: "image-15"),UIImage(named: "image-16"),UIImage(named: "image-17"),UIImage(named: "image-18"),UIImage(named: "image-19"),UIImage(named: "image-20"),UIImage(named: "image-21"),UIImage(named: "image-22"),UIImage(named: "image-23"),UIImage(named: "image-24"),UIImage(named: "image-25"),UIImage(named: "image-1"),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let layout = collectionView?.collectionViewLayout as? PinterestLayout {
          layout.delegate = self
        }
        collectionView.contentInset = UIEdgeInsets(top: 10, left: 5, bottom: 10, right: 5)
        // Do any additional setup after loading the view.
    }


}


//MARK : Datasource

extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCell", for:indexPath) as! photoCell
        cell.imageView.image = images[indexPath.item]
        return cell
    }
}

//MARK : Flow Layout delegate


extension ViewController: PinterestLayoutDelegate {
    
  func collectionView(
      _ collectionView: UICollectionView,
      heightForPhotoAtIndexPath indexPath:IndexPath) -> CGFloat {
    let image = images[indexPath.item]
    let imgWidth = (image?.size.width)!
    let imgHeight = (image?.size.height)!
    let x = collectionView.bounds.width
    let numberOfColunm = 3
    let height:CGFloat = (x/CGFloat(numberOfColunm))*imgHeight/imgWidth
    // tính height theo kích thước ảnh gốc
    
    return height
  }
}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let detailScreen = sb.instantiateViewController(withIdentifier: "SBDetail") as! DetailViewController
        detailScreen.myImage = images[indexPath.item]
        
        self.navigationController?.pushViewController(detailScreen, animated: true)
    }
}
