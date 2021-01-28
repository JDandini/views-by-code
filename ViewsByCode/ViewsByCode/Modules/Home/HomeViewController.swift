//
//  HomeViewController.swift
//  ViewsByCode
//
//  Created by F J Castaneda Ramos on 27/01/21.
//

import UIKit

class HomeViewController: UIViewController {
    var presenter: HomePresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension HomeViewController: HomeViewProtocol {}
