{-# LANGUAGE KindSignatures, DataKinds #-}

-- | Card List
data Card = FarmVillage
          | DaMaid
          | BurnAgriculture

data Ability = Static
             | Actiavte
             | Trigger

data CardType = Land
              | Offense
              | Deffense
              | Succession

data SubType = Maid
             | Magic
             | Military
             | Scheme
             | Merchant
             | None

-- | Proxy type for types having kind named Card
data Play (c :: Card) = Proxy

class Playable (c :: Card) where
    cost :: Play (c :: Card) -> Int

    coin :: Play (c :: Card) -> Int

    cardType :: Play (c :: Card) -> CardType

    subType :: Play (c :: Card) -> SubType

    name :: Play (c :: Card) -> String
    name = const ""

    description :: Play (c :: Card) -> String
    description = const ""
