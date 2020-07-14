//
//  Homeviewcontroller.swift
//  IocApp
//
//  Created by Veton Shala on 7/14/20.
//  Copyright © 2020 Veton Shala. All rights reserved.
//

import UIKit

class Homeviewcontroller: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate{
    
    
    let cardtitle = ["Menaxhimi i Porosive" , "Menaxhimi i Fakturave"]
    
    
    let image=[UIImage(named :"invoice"),UIImage(named :"order-1")]
    
    let des = ["Menaxhimi i Porosive me ane te Applikacionit ioc eshte i lehte dhe i shpejt" , "Menaxhimi i Fakturave me ane te ioc app eshte me i shpejt dhe me i lehte"]
    
    
    //number of cards
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return cardtitle.count;
    }
    
    //lloj i for loop
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.cardimage.image = image[indexPath.row]
        cell.cardtitle.text = cardtitle[indexPath.row]
        cell.carddesc.text = des[indexPath.row]
        
        
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        
        return cell
        
    }
    
}
