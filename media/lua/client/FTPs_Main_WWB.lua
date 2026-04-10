--**********************************************************--
--**              FAST TRAVEL POINTS                      **--
--**               Code written by Chuck                  **--
--**          teleportPlayers() by Shurutsue              **--
--**********************************************************--

local TeleportUtil = require "PikaTeleportUtil"

local ELEVATOR = "ElevatorSound"

TeleportUtil.registerLocations({

    --*******************************************************--
    --**                     CANADA                        **--
    --*******************************************************--

    -- USS Cyclops / Eldridge Lift
    EnterCyclops    = {4866, 2003, 2, sound=ELEVATOR},
    ExitCyclops     = {4866, 2003, 0, sound=ELEVATOR},

    -- Miller Asylum Basement
    EnterMiller     = {4526, 3330, 0},
    ExitMiller      = {4660, 3180, 0},

    --*******************************************************--
    --**                    CELEPHAIS                       **--
    --*******************************************************--

    -- Celephais Entrance
    EnterCelephais  = {7583, 674, 4},
    ExitCelephais   = {6654, 633, 0},

    -- Prison Entrance
    EnterPrison     = {7602, 800, 0},
    ExitPrison      = {7664, 648, 2},

    -- Utility Tunnels Entrance
    EnterUtility    = {7703, 936, 2},
    ExitUtility     = {7641, 777, 0},

    -- Solitary Confinement Block Entrance
    EnterSolitary   = {7607, 960, 2, sound=ELEVATOR},
    ExitSolitary    = {7563, 759, 0, sound=ELEVATOR},

    -- Sprawl Entrance
    EnterSprawl     = {7831, 778, 0, sound=ELEVATOR},
    ExitSprawl      = {7523, 813, 0, sound=ELEVATOR},

    -- Clean Room Hall Lift
    EnterClean      = {7868, 646, 2, sound=ELEVATOR},
    ExitClean       = {7868, 646, 0, sound=ELEVATOR},

    -- Observation Lab Control Center Lift
    EnterObs        = {7930, 682, 1, sound=ELEVATOR},
    ExitObs         = {7878, 683, 2, sound=ELEVATOR},

    -- Vault Entrance
    EnterVault      = {8018, 937, 1, sound=ELEVATOR},
    ExitVault       = {8044, 734, 1, sound=ELEVATOR},

    -- Vault Cargo Lift
    EnterCargo      = {7946, 945, 0, sound=ELEVATOR},
    ExitCargo       = {7946, 945, 1, sound=ELEVATOR},

    -- Core Entrance
    EnterCore       = {7749, 781, 1},
    ExitCore        = {7810, 1020, 0},

    -- Core Lift
    EnterCoreLift   = {7723, 788, 4, sound=ELEVATOR},
    ExitCoreLift    = {7723, 788, 1, sound=ELEVATOR},

    -- Lockheed C-130 Hercules
    EnterC130       = {8053, 933, 4},
    ExitC130        = {7974, 944, 0},

    --*******************************************************--
    --**                    PITTSFORD                       **--
    --*******************************************************--

    -- Tram Station Access
    EnterTS         = {10128, 18733, 1},
    ExitTS          = {10128, 18726, 2},

    -- Tram Station Sewers Access
    EnterTSS        = {10074, 18851, 1},
    ExitTSS         = {10143, 18726, 1},

    -- RFO Sewers Access
    EnterRFOS       = {10017, 18799, 2},
    ExitRFOS        = {9910, 18637, 2},

    -- Fight Club Access
    EnterFC         = {10040, 18785, 2},
    ExitFC          = {9470, 19015, 0},

    -- Master Tram
    TramTS          = {10123, 18750, 1},
    TramRFO         = {9920, 18639, 2},
    TramLiberty     = {9585, 19075, 0},
    TramNazareth    = {10659, 18661, 0},

    --*******************************************************--
    --**                      TEXAS                        **--
    --*******************************************************--

    -- Cellar Access
    EnterCellar     = {8851, 3616, 0},
    ExitCellar      = {8866, 3051, 0},

    --*******************************************************--
    --**                      OTHER                        **--
    --*******************************************************--

    -- Ship Vents Access 1
    EnterDSVents1   = {8792, 3652, 1},
    ExitDSVents1    = {8793, 3652, 1},

    -- Ship Vents Access 2
    EnterDSVents2   = {8781, 3659, 2},
    ExitDSVents2    = {8780, 3659, 2},

    -- Ship Access Doors 1
    EnterDSShip1    = {8727, 3725, 3},
    ExitDSShip1     = {12354, 4531, 2},

    -- Ship Access Doors 2
    EnterDSShip2    = {8738, 3649, 3},
    ExitDSShip2     = {12334, 4531, 2},
})
