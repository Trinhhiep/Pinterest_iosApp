//
//  DetailViewController.swift
//  Pinterest
//
//  Created by Admin on 14/04/2021.
//

import UIKit

class DetailViewController: UIViewController {
    var myImage : UIImage?
    @IBOutlet weak var imgDetail: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgDetail.image = myImage
        // Do any additional setup after loading the view.
    }
    

    @IBAction func handlePinch(_ sender: UIPinchGestureRecognizer) {
        if let view = sender.view {
          view.transform = view.transform.scaledBy(x: sender.scale, y: sender.scale)
            sender.scale = 1
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
