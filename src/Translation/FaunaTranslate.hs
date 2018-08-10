module Translation.FaunaTranslate where

    import Models.Fauna
    import BioMap.FaunaMap

    finalCreature :: Creature -> String
    finalCreature creature = 
      biomeTranslate creature
      ++ "-"
      ++ genderTranslate creature
      ++ ageTranslate creature
      ++ " "
      ++ dietTranslate creature
      ++ ecoSystemTranslate creature
      ++ temperamentTranslate creature
  
    biomeTranslate :: Creature -> String
    biomeTranslate creature = biomeMap $ biome creature
  
    genderTranslate :: Creature -> String
    genderTranslate creature = genderMap $ gender creature
  
    ageTranslate :: Creature -> String
    ageTranslate creature = ageMap $ faunaAge creature
  
    dietTranslate :: Creature -> String
    dietTranslate creature = dietMap $ diet creature
  
    ecoSystemTranslate :: Creature -> String
    ecoSystemTranslate creature = ecoSystemMap $ ecoSystem creature
  
    temperamentTranslate :: Creature -> String
    temperamentTranslate creature = temperamentMap $ temperament creature
  