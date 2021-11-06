//
//  IconImage.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

 enum IconImageForTabBar {
     static let mediaLibrary = UIImage(systemName: "photo.fill.on.rectangle.fill")
     static let forYou = UIImage(systemName: "heart.text.square.fill")
     static let gallery = UIImage(systemName: "square.stack.fill")
     static let search = UIImage(systemName: "magnifyingglass")
 }

enum MyAlbumsCellIconImage {
     static let recent = UIImage(named: "Image1")
     static let favorites = UIImage(named: "Image2")
     static let instagram = UIImage(named: "Image3")
     static let whatsApp = UIImage(named: "Image4")
     static let pinterest = UIImage(named: "Image5")
     static let telegram = UIImage(named: "Image6")
     static let twitter = UIImage(named: "Image7")
     static let work = UIImage(named: "Image8")
}

enum SharedAlbumsCellIconImage {
    static let family = UIImage(named: "image9")
    static let girlFriend = UIImage(named: "image10")
    static let general = UIImage(named: "image11")
    static let home = UIImage(named: "image12")
}

enum PeopleAndPlacesCellIconImage {
     static let people = UIImage(named: "Image13")
     static let places = UIImage(named: "Image14")
 }

enum TypesOfMediaCellIconImage {
     static let video = UIImage(systemName: "video")
     static let selfie = UIImage(systemName: "person.crop.square")
     static let photoLivePhotos = UIImage(systemName: "livephoto")
     static let portraits = UIImage(systemName: "cube")
     static let panoramas = UIImage(systemName: "pano")
     static let timelapse = UIImage(systemName: "timelapse")
     static let slowly = UIImage(systemName: "slowmo")
     static let screenshots = UIImage(systemName: "camera.viewfinder")
     static let animated = UIImage(systemName: "square.stack.3d.forward.dottedline")
 }

enum OtherCellIconImage {
     static let imported = UIImage(systemName: "square.and.arrow.down")
     static let hidden = UIImage(systemName: "eye.slash")
     static let recentlyDeleted = UIImage(systemName: "trash")
 }
