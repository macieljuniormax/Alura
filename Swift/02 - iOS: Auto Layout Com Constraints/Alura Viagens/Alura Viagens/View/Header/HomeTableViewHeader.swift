//
//  HomeTableViewHeader.swift
//  Alura Viagens
//
//  Created by Maciel Ferreira Custódio Júnior on 29/06/25.
//

import UIKit

class HomeTableViewHeader: UIView {
    // MARK: - IBOutlets
    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var bannerView: UIView!
    
    internal func setupView() {
        self.headerView.backgroundColor = UIColor(red: 30.0/255, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1.0)
        self.headerView.layer.cornerRadius = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 500 : 200
        self.headerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        self.bannerView.layer.cornerRadius = 10
        self.bannerView.layer.masksToBounds = true
    }
}
