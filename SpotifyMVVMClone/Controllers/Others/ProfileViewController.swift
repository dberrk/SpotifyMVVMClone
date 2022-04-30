//
//  ProfileViewController.swift
//  SpotifyMVVMClone
//
//  Created by Berk Macbook on 20.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        APICaller.shared.getCurrentUserProfile { result in
            switch result {
            case .success(let model):
                break
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
