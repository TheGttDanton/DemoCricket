//
//  SchedulerService.swift
//  DemoCricket
//
//  Created by OlX on 08/02/21.
//

import Foundation

class Scheduler {
    let teams: [Team]
    
    private var matches: [Match] = []
    private var matchSchduledDict = [String:Bool]()
    init(teams: [Team]) {
        self.teams = teams
    }
    
    // there could be  one or two matches between teams
    
    func scheduleMatches() -> [Match] {
        for teamA in teams {
            for teamB in teams {
                if !(teamA === teamB) {
                    scheduleMatch(teamA: teamA, teamB: teamB)
                }
            }
        }
        return matches
    }
    
    func isMatchScheduled(teamA: Team, teamB: Team) -> Bool {
        let key1 = teamA.name + teamB.name
        let key2 = teamB.name + teamA.name
        return (matchSchduledDict[key1] ?? false) || (matchSchduledDict[key2] ?? false)
    }
    
    func scheduleMatch(teamA: Team, teamB: Team) {
        if isMatchScheduled(teamA: teamA, teamB: teamB) == false {
            let match = Match(teamA: teamA, teamB: teamB)
            matches.append(match)
            matchSchduledDict[teamA.name + teamB.name] = true
            matchSchduledDict[teamB.name + teamA.name] = true
        }
    }
}


