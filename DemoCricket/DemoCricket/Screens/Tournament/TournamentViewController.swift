//
//  TournamentViewController.swift
//  DemoCricket
//
//  Created by OlX on 08/02/21.
//

import UIKit

class TournamentViewController: UIViewController {
    let tournamerntViewModel: TournamentViewModable = TournamentViewModel()
    @IBOutlet weak var createBtn: UIButton!
    @IBOutlet weak var matchTypeTextField: UITextField!
    @IBOutlet weak var tournamentName: UITextField!
    @IBOutlet weak var matchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        matchTextField.delegate = self
        tournamentName.delegate = self
    }
    

    @IBAction func createMatch(_ sender: Any) {
        if let numberOfTeam = Int(matchTextField.text ?? ""), let name = tournamentName.text {
            let matchType: MatchType
            if let numberOfMatch = Int(matchTypeTextField.text ?? "") {
                matchType = .limitedOver(numberOfMatch)
            } else {
                matchType = .test
            }
            tournamerntViewModel.createTournament(with: name, numberOfTeam: numberOfTeam, matchType: matchType) { [weak self] in
                
                
            }
        }
    }
}

extension TournamentViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        checkIfCreateBtnEnabled()
        return true
    }
    
    private func checkIfCreateBtnEnabled() {
        if matchTextField.text != nil && tournamentName.text != nil {
            createBtn.isEnabled = true
        } else {
            createBtn.isEnabled = false
        }
    }
}
