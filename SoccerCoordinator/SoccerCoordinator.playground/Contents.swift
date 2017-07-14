// Player Info
/*
 Joe Smith              42      YES     Jim and Jan Smith
 Jill Tanner            36      YES     Clara Tanner
 Bill Bon               43      YES     Sara and Jenny Bon
 Eva Gordon             45      NO      Wendy and Mike Gordon
 Matt Gill              40      NO      Charles and Sylvia Gill
 Kimmy Stein            41      NO      Bill and Hillary Stein
 Sammy Adams            45      NO      Jeff Adams
 Karl Saygan            42      YES     Heather Bledsoe
 Suzane Greenberg       44      YES     Henrietta Dumas
 Sal Dali               41      NO      Gala Dali
 Joe Kavalier           39      NO      Sam and Elaine Kavalier
 Ben Finkelstein        44      NO      Aaron and Jill Finkelstein
 Diego Soto             41      YES     Robin and Sarika Soto
 Chloe Alaska           47      NO      David and Jamie Alaska
 Arnold Willis          43      NO      Claire Willis
 Phillip Helm           44      YES     Thomas Helm and Eva Jones
 Les Clay               42      YES     Wynonna Brown
 Herschel Krustofski	45      YES     Hyman and Rachel Krustofski
*/

// Individual dictionaries for each player

let player1: [String: Any] = ["Name": "Joe Smith", "Height": 42, "XP": true, "Guardian": "Jim and Jan Smith"]
let player2: [String: Any] = ["Name": "Jill Tanner", "Height": 36, "XP": true, "Guardian": "Clara Tanner"]
let player3: [String: Any] = ["Name": "Bill Bon", "Height": 43, "XP": true, "Guardian": "Sara and Jenny Bon"]
let player4: [String: Any] = ["Name": "Eva Gordon", "Height": 45, "XP": false, "Guardian": "Wendy and Mike Gordon"]
let player5: [String: Any] = ["Name": "Matt Gill", "Height": 40, "XP": false, "Guardian": "Chales and Sylvia Gill"]
let player6: [String: Any] = ["Name": "Kimmy Stein", "Height": 41, "XP": false, "Guardian": "Bill and Hillary Stein"]
let player7: [String: Any] = ["Name": "Sammy Adams", "Height": 45, "XP": false, "Guardian": "Jeff Adams"]
let player8: [String: Any] = ["Name": "Karl Saygan", "Height": 42, "XP": true, "Guardian": "Heather Bledsoe"]
let player9: [String: Any] = ["Name": "Suzane Greenberg", "Height": 44, "XP": true, "Guardian": "Henrietta Dumas"]
let player10: [String: Any] = ["Name": "Sal Dali", "Height": 41, "XP": false, "Guardian": "Gala Dali"]
let player11: [String: Any] = ["Name": "Joe Kavalier", "Height": 39, "XP": false, "Guardian": "Sam and Elaine Kavalier"]
let player12: [String: Any] = ["Name": "Ben Finkelstein", "Height": 44, "XP": false, "Guardian": "Aaron and Finkelstein"]
let player13: [String: Any] = ["Name": "Diego Soto", "Height": 41, "XP": true, "Guardian": "Robin and Sarika Soto"]
let player14: [String: Any] = ["Name": "Chloe Alaska", "Height": 47, "XP": false, "Guardian": "David and Jamie Alaska"]
let player15: [String: Any] = ["Name": "Arnold Willis", "Height": 43, "XP": false, "Guardian": "Claire Willis"]
let player16: [String: Any] = ["Name": "Phillip Helm", "Height": 44, "XP": true, "Guardian": "Thomas Helm and Eva Jones"]
let player17: [String: Any] = ["Name": "Les Clay", "Height": 42, "XP": true, "Guardian": "Wynonna Brown"]
let player18: [String: Any] = ["Name": "Herschel Krustofski", "Height": 45, "XP": true, "Guardian": "Hyman and Rachel Krustofski"]

// Putting all the players in one dictionary

var players: [[String: Any]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Team Variables

var teamSharks: [[String: Any]] = []
var teamDragons: [[String: Any]] = []
var teamRaptors: [[String: Any]] = []
var teams = [teamSharks, teamDragons, teamRaptors]

// Team Training

var teamSharksTraining = "March 17, 3pm"
var teamDragonsTraining = "March 17, 1pm"
var teamRaptorsTraining = "March 18, 1pm"

// Experience Variables

var experienced = [[String: Any]]()
var inexperienced = [[String: Any]]()

// Player Experience Sorting

for player in players {
    
    if player["XP"] as! Bool == true {
        experienced.append(player)
    } else {
        inexperienced.append(player)
    }
}

// Player Sorting into relevant teams

var experienceCounter = 0
for (var player) in experienced {
    experienceCounter += 1
    var remainder = experienceCounter % 3
    
    switch remainder {
    case 0:
        player ["Team"] = "Sharks"
        teamSharks.append(player)
    case 1:
        player ["Team"] = "Dragons"
        teamDragons.append(player)
    case 2:
        player ["Team"] = "Raptors"
        teamRaptors.append(player)
    default:
        break
    }
}


var inexperienceCounter = 0
for (var player) in inexperienced {
    inexperienceCounter += 1
    var remainder = inexperienceCounter % 3
    
    switch remainder {
    case 0:
        player ["Team"] = "Sharks"
        teamSharks.append(player)
    case 1:
        player ["Team"] = "Dragons"
        teamDragons.append(player)
    case 2:
        player ["Team"] = "Raptors"
        teamRaptors.append(player)
    default:
        break
    }
}


// Printing Letters to players

var letters: [String] = []

for player in teamSharks {
    letters.append("Dear\(player["Guardian"]!), we are delighted to inform you that \(player["Name"]!), has been selected to play for team Sharks! Your first training session will be \(teamSharksTraining)")
}

for player in teamDragons {
    letters.append("Dear\(player["Guardian"]!), we are delighted to inform you that \(player["Name"]!), has been selected to play for team Sharks! Your first training session will be \(teamDragonsTraining)")
}

for player in teamRaptors {
    letters.append("Dear\(player["Guardian"]!), we are delighted to inform you that \(player["Name"]!), has been selected to play for team Sharks! Your first training session will be \(teamRaptorsTraining).")
}

for i in 0..<letters.count {
    print(letters[i])
}






























