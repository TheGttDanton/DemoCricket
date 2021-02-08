//
//  Tournamnet.swift
//  DemoCricket
//
//  Created by OlX on 08/02/21.
//

import Foundation

class Tournament {
    let name: String
    var match: [Match] = []
    var team: [Team] = []
    var pointTable: [PointTable] = []
    
    init(name: String) {
        self.name = name
    }
    
}

class PointTable {
    let team: Team
    var points: Int = 0
    
    init(team: Team) {
        self.team = team
    }
}

class Match {
    let teamA: Team
    let teamB: Team
    
    init(teamA: Team, teamB: Team) {
        self.teamA = teamA
        self.teamB = teamB
    }
}

class Team {
    let name: String
    var players: [Player] = []
    
    init(name: String) {
        self.name = name
    }
}

class Player {
    let name: String
    var age: Int
    var runScored: Int = 0
    var wicketTaken: Int = 0
    
    
    init(name:String , age: Int) {
        self.name = name
        self.age = age
    }
}



