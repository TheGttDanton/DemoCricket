//
//  TournamentViewModel.swift
//  DemoCricket
//
//  Created by OlX on 08/02/21.
//

import Foundation



class TournamentViewModel: TournamentViewModable {
    
    func createTournament(with name: String, numberOfTeam: Int, matchType: MatchType, completionHandler: @escaping () -> Void) {
        
    }

}


protocol TournamentViewModable {
    func createTournament(with name: String, numberOfTeam: Int, matchType: MatchType, completionHandler: @escaping () -> Void)
}


enum MatchType {
    case limitedOver(Int)
    case test
}
