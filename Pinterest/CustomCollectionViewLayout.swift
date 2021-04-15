//
//  CustomCollectionViewLayout.swift
//  Pinterest
//
//  Created by Admin on 14/04/2021.
//

import UIKit

protocol CustomCollectionViewLayoutDelegate: AnyObject {
  func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat
}
class CustomCollectionViewLayout: UICollectionViewLayout {
    weak var delegate: CustomCollectionViewLayoutDelegate?

        // 2
        private let numberOfColumns = 2
        private let cellPadding: CGFloat = 6

        // 3
        private var cache: [UICollectionViewLayoutAttributes] = []

        // 4
        private var contentHeight: CGFloat = 0

        private var contentWidth: CGFloat {
          guard let collectionView = collectionView else {
            return 0
          }
          let insets = collectionView.contentInset
          return collectionView.bounds.width - (insets.left + insets.right)
        }
        // 5
        override var collectionViewContentSize: CGSize {
          return CGSize(width: contentWidth, height: contentHeight)
        }
    
    override func prepare() {
          // 1
          guard
            cache.isEmpty,
            let collectionView = collectionView
            else {
              return
          }
          // 2
//          let columnWidth = contentWidth / CGFloat(numberOfColumns)
//          var xOffset: [CGFloat] = []
//          for column in 0..
    }
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
      var visibleLayoutAttributes: [UICollectionViewLayoutAttributes] = []
      
      // Loop through the cache and look for items in the rect
      for attributes in cache {
        if attributes.frame.intersects(rect) {
          visibleLayoutAttributes.append(attributes)
        }
      }
      return visibleLayoutAttributes
    }
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
          return cache[indexPath.item]
        }
}
