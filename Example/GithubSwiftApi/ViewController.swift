//
//  ViewController.swift
//  GithubSwiftApi
//
//  Created by jcleilton@gmail.com on 11/13/2020.
//  Copyright (c) 2020 jcleilton@gmail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let tableView = UITableView()
    let viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        self.viewModel.delegate = self
        fetchData()
    }
    
    func configTableView() {
        self.view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func fetchData() {
        self.viewModel.fetchData()
//        self.viewModel.getImage() // To test the mock get image
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let cellData = viewModel.getCellData(from: indexPath)
        cell?.textLabel?.text = (cellData?.id ?? "-") + " / " + (cellData?.value ?? "-")
        return cell ?? UITableViewCell()
    }
}

extension ViewController: ViewModelDelegate {
    func didLoad() {
        DispatchQueue.main.async { [weak self] in
            self?.tableView.reloadData()
        }
//        self.viewModel.getImage() // To test the api image download
    }
    
    func fetchFailled(message: String) {
        
    }
    
    func showLoading() {
        
    }
    
    func hideLoading() {
        
    }
    
    func didLoadImage(data: Data) {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            let image = UIImage(data: data)
            let imageView = UIImageView(image: image)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFit
            self.view.addSubview(imageView)
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            imageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
            imageView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
            imageView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        }
    }
}

