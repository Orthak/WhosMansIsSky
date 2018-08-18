module Models.Entities where

    data Entities = 
        Animals
        | Plants
        | Planets
        | Stations
        | Systems
        deriving (Eq, Enum, Show, Read, Bounded)
