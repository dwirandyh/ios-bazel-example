//
//  ViewController.swift
//  NewsApp
//
//  Created by Dwi Randy H on 21/11/21.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Example Title"
        fetchFilms()
    }

    
    private func fetchFilms() {
        let request = AF.request("https://swapi.dev/api/films")
        request.responseJSON { (data) in
            print(data)
            self.title = "Film fetched"
            self.navigateToDetail()
        }
    }
    
    private func navigateToDetail() {
        let viewController = DetailViewController()
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

