//
//  SettingsViewController.swift
//  SpotifyMVVMClone
//
//  Created by Berk Macbook on 20.04.2022.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var sections = [Section]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureModels()
        title = "Settings"
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    private func configureModels() {
        sections.append(Section(title: "Profile", options: [Option(title: "View your profile", handler: {[weak self] in
            DispatchQueue.main.async {
                self?.signOutTapped()
            }
            
            
        })]))
        
        sections.append(Section(title: "Account", options: [Option(title: "Sign Out", handler: {[weak self] in
            
            DispatchQueue.main.async {
                self?.viewProfile()
            }
        
            
        })]))
    }
    
    private func signOutTapped() {
        
    }
    
    private func viewProfile() {
        let vc = ProfileViewController()
        vc.title = "Profile"
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
 //MARK: - TableView
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].options.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = sections[indexPath.section].options[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = model.title
        return cell
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let model = sections[indexPath.section].options[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        model.handler()
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let model = sections[section]
        return model.title
    }

}
