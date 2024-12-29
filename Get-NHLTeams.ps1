function Get-NHLTeams {
    [CmdletBinding()]
    param (
        [Parameter()]
        [Int]$Count = 1
    )

    begin {
        $Player1 = "TeamDad"
        $Player2 = "TeamTyler"

        $teams = @(
            "Anaheim Ducks",
            "Arizona Coyotes",
            "Boston Bruins",
            "Buffalo Sabres",
            "Calgary Flames",
            "Carolina Hurricanes",
            "Chicago Blackhawks",
            "Colorado Avalanche",
            "Columbus Blue Jackets",
            "Dallas Stars",
            "Detroit Red Wings",
            "Edmonton Oilers",
            "Florida Panthers",
            "Los Angeles Kings",
            "Minnesota Wild",
            "Montreal Canadiens",
            "Nashville Predators",
            "New Jersey Devils",
            "New York Islanders",
            "New York Rangers",
            "Ottawa Senators",
            "Philadelphia Flyers",
            "Pittsburgh Penguins",
            "San Jose Sharks",
            "Seattle Kraken",
            "St. Louis Blues",
            "Tampa Bay Lightning",
            "Toronto Maple Leafs",
            "Vancouver Canucks",
            "Vegas Golden Knights",
            "Washington Capitals",
            "Winnipeg Jets"
        )
    }

    process {

        for ($i = 1; $i -le $Count; $i++) {

            $team1 += Get-Random -InputObject $teams | Where-Object { $_ -ne $team1 }

            $team2 += Get-Random -InputObject $teams | Where-Object { $_ -ne $team1 }


        }


        [PSCustomObject]@{
            $($Player1) = $team1
            $($Player2) = $team2
        }
    }

    end {

    }
}