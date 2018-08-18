module Translation.FloraTranslate where

    import Models.Flora
    import BioMap.FloraMap

    finalPlant :: Plant -> String
    finalPlant plant = 
      ageTranslate plant
      ++ rootTranslate plant
      ++ nutrientTranslate plant
      ++ notesTranslate plant
  
    ageTranslate :: Plant -> String
    ageTranslate plant = ageMap $ floraAge plant
  
    rootTranslate :: Plant -> String
    rootTranslate plant = rootMap $ rootStructure plant
  
    nutrientTranslate :: Plant -> String
    nutrientTranslate plant = nutrientMap $ nutrientSource plant
  
    notesTranslate :: Plant -> String
    notesTranslate plant = notesMap $ notes plant
