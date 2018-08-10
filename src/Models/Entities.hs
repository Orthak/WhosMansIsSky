module Models.Entities where

    data Entities = 
        Fauna
        | Flora
        | Planets
        | Stations
        | Systems
        deriving (Eq, Enum, Show, Read, Bounded)
