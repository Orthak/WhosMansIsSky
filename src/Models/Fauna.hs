module Models.Fauna where

    -- Here is where we define the available properties, as well
    -- as define these properties together into a Creature.
    -- For the property types, we derrive from Enum to express it
    -- as being a collection of available options. We also derive
    -- Show and Read, since these are derrived in the composing type.
    -- Creature derives from Show and Read, so that we can output the
    -- result to the user, and/or allow the user to potentually imput 
    -- a pre-built Creature type.

    data Creature = Creature
        { biome :: Biome
        , gender :: Gender
        , faunaAge :: FaunaAge
        , diet :: Diet
        , ecoSystem :: EcoSystem
        , temperament :: Temperament
        } deriving (Show, Read)

    data Biome = 
        Lush
        | Barren
        | UnknownBiome
        | Airless
        | ExoticBiome
        | Scorched
        | Frozen
        | Toxic
        | Irradiated
        deriving (Eq, Enum, Show, Read, Bounded)

    data Gender =
        Male
        | Female
        | ExoticGender
        | UnknownGender
        | IndeterminateGender
        | Asymmetric
        | NonUniform
        | Symmetric
        | Rational
        | Vectorized
        | Prime
        | Radical
        | Asymptotic
        | Orthogonal
        | None
        deriving (Eq, Enum, Show, Read, Bounded)

    data FaunaAge = 
        Immature
        | Mature
        | IndeterminateAge
        | Constant
        | Fluctuating
        | Perpetual
        deriving (Eq, Enum, Show, Read, Bounded)

    data Diet = 
        Carnivore
        | Herbivore
        | Omnivore
        deriving (Eq, Enum, Show, Read, Bounded)

    data EcoSystem = 
        Ground
        | Air
        | Water
        | Caves
        deriving (Eq, Enum, Show, Read, Bounded)

    data temperament =
        Generic
        | Passive
        | Prey
        | PlayerPredator
        | Predator
        deriving (Eq, Enum, Show, Read, Bounded)
