module Main where

  import System.IO
  import Models.Fauna
  import Models.Flora
  import Translation.FaunaTranslate
  import Translation.FloraTranslate

  main :: IO ()
  main = do
    putStrLn "What are we looking at? ('q' to exit)"
    lookingAt <- getLine
    -- Separated out the processing of each entity to it's 
    -- own function. This is to reduce the complexity of this
    -- function, and easier to reason about what's actually 
    -- trying to be accomplished.
    if (lookingAt == "Animal") 
      then processAnimal
    else if (lookingAt == "Plant")
      then processPlant
    else if (lookingAt == "q")
      then end
    else
      processUnknown

  -- We need to ensure that the type of 'a' is of both
  -- the typeclass of Read and Show. This is so we can 
  -- read the input as the type we want, as well as show
  -- the list of optons that we're passed.
  inputOf :: (Read a, Show a) => String -> [a] -> IO a
  inputOf name options = do
    putStrLn name
    putStrLn $ show options
    hFlush stdout
    selected <- readLn
    return selected

  processAnimal :: IO ()
  processAnimal = do
    theBiome <- inputOf "Biome" [(minBound :: Biome) ..]
    theGender <- inputOf "Gender" [(minBound :: Gender) ..]
    theAge <- inputOf "Age" [(minBound :: FaunaAge) ..]
    theDiet <- inputOf "Diet" [(minBound :: Diet) ..]
    theEcoSystem <- inputOf "EcoSystem" [(minBound :: EcoSystem) ..]
    theTemperment <- inputOf "Temperment" [(minBound :: Temperment) ..]
    let creature = Creature { 
      biome = theBiome
      , gender = theGender
      , faunaAge = theAge
      , diet = theDiet
      , ecoSystem = theEcoSystem
      , temperment =  theTemperment
      }
    putStrLn $ (++) (finalCreature creature) "\n"
    main

  processPlant :: IO ()
  processPlant = do
    theAge <- inputOf "Age" [(minBound :: FloraAge) ..]
    theRoots <- inputOf "Roots" [(minBound :: RootStructure) ..]
    theNutrients <- inputOf "Nutrients" [(minBound :: NutrientSource) ..]
    theNotes <- inputOf "Notes" [(minBound :: Notes) ..]
    let plant = Plant {
      floraAge = theAge
      , rootStructure = theRoots
      , nutrientSource = theNutrients
      , notes = theNotes
    }
    putStrLn $ (++) (finalPlant plant) "\n"
    main

  processUnknown :: IO ()
  processUnknown = do
    putStrLn "Unknown entity name."
    main

  end :: IO ()
  end = do
    putStrLn "exiting..."
