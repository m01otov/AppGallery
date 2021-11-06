//
//  Model.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

struct Model {

    var models = [Section]()

    mutating func createCollection() {

        // MARK: - My albums section

        models.append(Section(header: Header.headerAndButton(model:
                       HeaderAndButton(title: SectionTitle.myAlbums, titleButton: SectionTitle.buttonTitle) ), cell: [
       .imageCell(model: CardTypeCell(header: MyAlbumsCellTitle.recent, icon: MyAlbumsCellIconImage.recent, countTitle: MyAlbumsCellSubTitle.recent)),
        .imageCell(model: CardTypeCell(header: MyAlbumsCellTitle.favorites, icon: MyAlbumsCellIconImage.favorites, countTitle: MyAlbumsCellSubTitle.favorites)),
       .imageCell(model: CardTypeCell(header: MyAlbumsCellTitle.instagram, icon: MyAlbumsCellIconImage.instagram, countTitle: MyAlbumsCellSubTitle.instagram)),
        .imageCell(model: CardTypeCell(header: MyAlbumsCellTitle.whatsApp, icon: MyAlbumsCellIconImage.whatsApp, countTitle: MyAlbumsCellSubTitle.whatsApp)),
       .imageCell(model: CardTypeCell(header: MyAlbumsCellTitle.whatsApp, icon: MyAlbumsCellIconImage.whatsApp, countTitle: MyAlbumsCellSubTitle.whatsApp)),




                       ]))
}
