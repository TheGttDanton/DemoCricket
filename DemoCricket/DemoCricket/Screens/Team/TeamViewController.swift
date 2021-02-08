//
//  TeamViewController.swift
//  DemoCricket
//
//  Created by OlX on 08/02/21.
//

import UIKit

class TeamViewController: UIViewController {
    let teamViewModel = TeamViewModel()
    
    @IBOutlet weak var teamName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func createTeam(_ sender: Any) {
        if let name = teamName.text {
            teamViewModel.createTeam(name: name) { [weak self] in
                self?.navigationController?.popViewController(animated: true)
            }
        }
    }
}
