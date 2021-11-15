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
        .imageCell(model: CardTypeCell(header: MyAlbumsCellTitle.pinterest, icon: MyAlbumsCellIconImage.pinterest, countTitle: MyAlbumsCellSubTitle.pinterest)),
        .imageCell(model: CardTypeCell(header: MyAlbumsCellTitle.telegram, icon: MyAlbumsCellIconImage.telegram, countTitle: MyAlbumsCellSubTitle.telegram)),
        .imageCell(model: CardTypeCell(header: MyAlbumsCellTitle.twitter, icon: MyAlbumsCellIconImage.twitter, countTitle: MyAlbumsCellSubTitle.twitter)),
        .imageCell(model: CardTypeCell(header: MyAlbumsCellTitle.work, icon: MyAlbumsCellIconImage.work, countTitle: MyAlbumsCellSubTitle.work))
    ]))

// MARK: - Shared albums section
    models.append(Section(header: Header.headerAndButton(model:
    HeaderAndButton(title: SectionTitle.sharedAlbums, titleButton: SectionTitle.buttonTitle)), cell: [

        .imageCell(model: CardTypeCell(header:SharedAlbumsCellTitle.family, icon: SharedAlbumsCellIconImage.family, countTitle: SharedAlbumsCellSubTitle.family)),
        .imageCell(model: CardTypeCell(header:SharedAlbumsCellTitle.girlFriend, icon: SharedAlbumsCellIconImage.girlFriend, countTitle: SharedAlbumsCellSubTitle.girlFriend)),
        .imageCell(model: CardTypeCell(header:SharedAlbumsCellTitle.general, icon: SharedAlbumsCellIconImage.general, countTitle: SharedAlbumsCellSubTitle.general)),
        .imageCell(model: CardTypeCell(header:SharedAlbumsCellTitle.home, icon: SharedAlbumsCellIconImage.home, countTitle: SharedAlbumsCellSubTitle.home))
    ]))
// MARK: - People and places section

     models.append(Section(header: Header.header(model: HeaderTitle(title: SectionTitle.peopleAndPlaces)), cell: [

         .imageCell(model: CardTypeCell(header: PeopleAndPlacesCellTitle.people, icon: PeopleAndPlacesCellIconImage.people, countTitle: PeopleAndPlacesCellSubTitle.people)),
         .imageCell(model: CardTypeCell(header: PeopleAndPlacesCellTitle.places, icon: PeopleAndPlacesCellIconImage.places, countTitle: PeopleAndPlacesCellSubTitle.places))
     ]))
// MARK: - Type of media section

     models.append(Section(header: Header.header(model: HeaderTitle(title: SectionTitle.typesOfMedia)), cell: [

         .rowCell(model: RowTypeCell(header: TypesOfMediaCellTitle.video, icon: TypesOfMediaCellIconImage.video, subTitle: TypesOfMediaCellSubTitle.video)),
         .rowCell(model: RowTypeCell(header: TypesOfMediaCellTitle.selfie, icon: TypesOfMediaCellIconImage.selfie, subTitle: TypesOfMediaCellSubTitle.selfie)),
         .rowCell(model: RowTypeCell(header: TypesOfMediaCellTitle.photoLivePhotos, icon: TypesOfMediaCellIconImage.photoLivePhotos, subTitle: TypesOfMediaCellSubTitle.photoLivePhotos)),
         .rowCell(model: RowTypeCell(header: TypesOfMediaCellTitle.portraits, icon: TypesOfMediaCellIconImage.portraits, subTitle: TypesOfMediaCellSubTitle.portraits)),
         .rowCell(model: RowTypeCell(header: TypesOfMediaCellTitle.panoramas, icon: TypesOfMediaCellIconImage.panoramas, subTitle: TypesOfMediaCellSubTitle.panoramas)),
         .rowCell(model: RowTypeCell(header: TypesOfMediaCellTitle.timelapse, icon: TypesOfMediaCellIconImage.timelapse, subTitle: TypesOfMediaCellSubTitle.timelapse)),
         .rowCell(model: RowTypeCell(header: TypesOfMediaCellTitle.slowly, icon: TypesOfMediaCellIconImage.slowly, subTitle: TypesOfMediaCellSubTitle.slowly)),
         .rowCell(model: RowTypeCell(header: TypesOfMediaCellTitle.screenshots, icon: TypesOfMediaCellIconImage.screenshots, subTitle: TypesOfMediaCellSubTitle.screenshots)),
         .rowCell(model: RowTypeCell(header: TypesOfMediaCellTitle.animated, icon: TypesOfMediaCellIconImage.animated, subTitle: TypesOfMediaCellSubTitle.animated))
     ]))

// MARK: - Other section
models.append(Section(header: Header.header(model: HeaderTitle(title: SectionTitle.other)), cell: [

             .rowCell(model: RowTypeCell(header: OtherCellTitle.imported, icon: OtherCellIconImage.imported, subTitle: OtherCellSubTitle.imported)),
             .rowCell(model: RowTypeCell(header: OtherCellTitle.hidden, icon: OtherCellIconImage.hidden, subTitle: OtherCellSubTitle.hidden)),
             .rowCell(model: RowTypeCell(header: OtherCellTitle.recentlyDeleted, icon: OtherCellIconImage.recentlyDeleted, subTitle: OtherCellSubTitle.recentlyDeleted))
         ]))
    }

}

