module Main where

  import Models.Fauna
  import Models.Flora
  import Translation.FaunaTranslate
  import Translation.FloraTranslate

  main :: IO ()
  main = do
    putStrLn "What are we looking at?"
    lookingAt <- getLine
    -- Separated out the processing of each entity to it's 
    -- own function. This is to reduce the complexity of this
    -- function, and easier to reason about what's actually 
    -- trying to be accomplished.
    if (lookingAt == "Animal") 
      then processAnimal
    else if (lookingAt == "Plant")
      then processPlant
    else
      processUnknown

  processAnimal :: IO ()
  processAnimal = do
    -- I don't really like this. I know there must be a better
    -- way to achieve this without explitcitly defining each and
    -- every property cose.
    putStrLn "Biome: "
    putStrLn $ show [(minBound :: Biome) ..]
    theBiome <- getLine
    putStrLn "Gender: "
    putStrLn $ show [(minBound :: Gender) ..]
    theGender <- getLine
    putStrLn "Age: "
    putStrLn $ show [(minBound :: FaunaAge) ..]
    theAge <- getLine
    putStrLn "Diet: "
    putStrLn $ show [(minBound :: Diet) ..]
    theDiet <- getLine
    putStrLn "EcoSystem: "
    putStrLn $ show [(minBound :: EcoSystem) ..]
    theEcoSystem <- getLine
    putStrLn "Temperment: "
    putStrLn $ show [(minBound :: Temperment) ..]
    theTemperment <- getLine
    let creature = Creature { 
      biome = read theBiome
      , gender = read theGender
      , faunaAge = read theAge
      , diet = read theDiet
      , ecoSystem = read theEcoSystem
      , temperment = read theTemperment
      }
    putStrLn $ finalCreature creature

  processPlant :: IO ()
  processPlant = do
    putStrLn "Not implemented yet."

  processUnknown :: IO ()
  processUnknown = do
    putStrLn "Unknown entity name."
