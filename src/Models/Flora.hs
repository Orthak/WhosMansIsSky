module Models.Flora where

    data Plant = Plant
        { floraAge :: FloraAge
        , rootStructure :: RootStructure
        , nutrientSource :: NutrientSource
        , notes :: Notes
        } deriving (Show, Read)

    data FloraAge = 
        Ancient
        | Fresh
        | Mature
        | Millennia
        | Perpetual
        | Seasoned
        | SeveralDays
        deriving (Eq, Enum, Show, Read, Bounded)

    data RootStructure = 
        Balanced
        | Capacious
        | Concentrated
        | Efficient
        | Extensive
        | Grasping
        | Independent
        | Invasive
        | Obtuse
        | Simple
        | Substantial
        | Symbiotic
        | Transferrable
        | Unsupported
        deriving (Eq, Enum, Show, Read, Bounded)

    data NutrientSource = 
        AirLeeching
        | AtmosphericMoisture
        | BuriedCarbon
        | BuriedTreasure
        | Carnivorous
        | Conjuration
        | FreeRadicals
        | FungalSymbiosis
        | GammaRays
        | GasCloud
        | OtherPlants
        | SoilRecycling
        | SublimatedNitrogen
        | Sunlight
        | UltravioletRadiation
        deriving (Eq, Enum, Show, Read, Bounded)

    data Notes = 
        CombustibleFruits
        | DelicateFlowers
        | DroughtResistant
        | Extraterrestrial
        | FlowersOnce
        | GrasslikeSeeds
        | HallucinogenicBark
        | HiddenTentacles
        | HighMetalContent
        | InternalBranches
        | IrresistibleSeeds
        | LuminousBulbs
        | ParalyzingSpores
        | RapidReproduction
        | SelfPollinating
        | SlowGrowing
        | WindBlownSeeds
        deriving (Eq, Enum, Show, Read, Bounded)
