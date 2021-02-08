//
//  TeamViewModel.swift
//  DemoCricket
//
//  Created by OlX on 08/02/21.
//

import Foundation

class TeamViewModel: TeamViewModelable {
    weak var tournament: Tournament?
    
    func createTeam(name: String, completionHandler: @escaping () -> Void) {
        let team = Team(name: name)
        for i in 1...11 {
            let player = Player(name: "Player\(i)", age: 20)
            team.players.append(player)
        }
        tournament?.team.append(team)
    }
}

protocol TeamViewModelable {
    var tournament: Tournament? { get set}
    func createTeam(name: String, completionHandler: @escaping () -> Void)
}
