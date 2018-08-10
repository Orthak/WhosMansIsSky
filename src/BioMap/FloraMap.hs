module BioMap.FloraMap where

    import Models.Flora

    ageMap :: FloraAge -> String
    ageMap a
        | a == Ancient      = "Acen"
        | a == Fresh        = "Freh"
        | a == Mature       = "Matu"
        | a == Millennia    = "Milla"
        | a == Perpetual    = "Pretu"
        | a == Seasoned     = "Sesod"
        | a == SeveralDays  = "Sevay"

    rootMap :: RootStructure -> String
    rootMap r
        | r == Balanced      = "Blan"
        | r == Capacious     = "Capiu"
        | r == Concentrated  = "Cotre"
        | r == Efficient     = "Eint"
        | r == Extensive     = "Eeniv"
        | r == Grasping      = "Gasn"
        | r == Independent   = "Inpen"
        | r == Invasive      = "Ivas"
        | r == Obtuse        = "Obus"
        | r == Simple        = "Simle"
        | r == Substantial   = "Stail"
        | r == Symbiotic     = "Symot"
        | r == Transferrable = "Treb"
        | r == Unsupported   = "Upre"

    nutrientMap :: NutrientSource -> String
    nutrientMap n 
        | n == AirLeeching          = "Achn"
        | n == AtmosphericMoisture  = "Asers"
        | n == BuriedCarbon         = "Becon"
        | n == BuriedTreasure       = "Bresu"
        | n == Carnivorous          = "Canvor"
        | n == Conjuration          = "Curat"
        | n == FreeRadicals         = "Feric"
        | n == FungalSymbiosis      = "Famsi"
        | n == GammaRays            = "Garys"
        | n == GasCloud             = "Gacu"
        | n == OtherPlants          = "Orant"
        | n == SoilRecycling        = "Siryc"
        | n == SublimatedNitrogen   = "Sumig"
        | n == Sunlight             = "Siht"
        | n == UltravioletRadiation = "Urorit"

    notesMap :: Notes -> String
    notesMap n
        | n == CombustibleFruits    = "Custru"
        | n == DelicateFlowers      = "Diclow"
        | n == DroughtResistant     = "Doures"
        | n == Extraterrestrial     = "Etresi"
        | n == FlowersOnce          = "Force"
        | n == GrasslikeSeeds       = "Galse"
        | n == HallucinogenicBark   = "Hunik"
        | n == HiddenTentacles      = "Henle"
        | n == HighMetalContent     = "Hilte"
        | n == InternalBranches     = "Irban"
        | n == IrresistibleSeeds    = "Istib"
        | n == LuminousBulbs        = "Loubs"
        | n == ParalyzingSpores     = "Pazsp"
        | n == RapidReproduction    = "Riprut"
        | n == SelfPollinating      = "Slonti"
        | n == SlowGrowing          = "Sowrin"
        | n == WindBlownSeeds       = "Wilnse"
