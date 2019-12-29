//
//  DetailViewController.swift
//  zaliczenie
//
//  Created by kprzystalski on 25/12/2019.
//  Copyright © 2019 kprzystalski. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    // @TODO: podepnij:
    @IBOutlet weak var productDesc: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var map: MKMapView!
    
    func configureView() {
        if let detail = detailItem {
            
            let url = URL(string: detail.image!)

            DispatchQueue.global().async {
                let data = try? Data(contentsOf: url!)
                DispatchQueue.main.async {
                    // @TODO: tutaj załaduj obraz z url
                }
            }
              

            if let label = productDesc {
                label.text = detail.desc
            }
  
            /* @TODO tutaj załaduj dane do mapy */
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    var detailItem: Product? {
        didSet {
            configureView()
        }
    }


}

