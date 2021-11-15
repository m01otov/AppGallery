//
//  ViewController.swift
//  AppGallery
//
//  Created by Ilya Melnikov on 06.11.2021.
//

import UIKit

class GalleryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        setupView()
        createButtonInNavBar()
    }

    private func setupView() {
        view.backgroundColor = .white
        title = TabBarTitle.gallery
    }

    private func createButtonInNavBar() {
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    }


}

