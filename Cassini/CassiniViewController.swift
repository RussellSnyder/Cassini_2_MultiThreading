//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Russell Wunder on 03.06.19.
//  Copyright © 2019 Russell Snyder. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if let url = DemoURLs.NASA[identifier] {
                if let imageVC = segue.destination.contents as? ImageViewController {
                    imageVC.imageUrl = url
                    imageVC.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }

}


extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
                return self
        }
    }
}
