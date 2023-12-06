Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.AvailableJobs = { -- Only used when not using qb-jobs.
    ["trucker"] = {["label"] = "Camionero", ["isManaged"] = false},
    ["taxi"] = {["label"] = "Taxi", ["isManaged"] = false},
    ["tow"] = {["label"] = "Camión de remolque", ["isManaged"] = false},
    --["reporter"] = {["label"] = "Reportero", ["isManaged"] = false},
    ["garbage"] = {["label"] = "Recolector de basura", ["isManaged"] = false},
    ["bus"] = {["label"] = "Conductor de autobús", ["isManaged"] = false},
    ["hotdog"] = {["label"] = "Puesto de perritos calientes", ["isManaged"] = false},
    ["lenador"] = {["label"] = "Leñador", ["isManaged"] = false},
    ["minero"] = {["label"] = "Minero", ["isManaged"] = false},
    ["chatarrero"] = {["label"] = "Chatarrero", ["isManaged"] = false},

}

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-265.0, -963.6, 31.2),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = "Servicios de la ciudad"
        },
        licenses = {
            ["id_card"] = {
                label = "ID Card",
                cost = 50,
            },
            ["permit"] = {
                label = 'Permiso',
                cost = 25,
                metadata = 'permit',
            },
            ["cdl"] = {
                label = 'CDL',
                cost = 75,
                metadata = 'cdl',
            },
            ["bike"] = {
                label = 'Licencia de motocicleta',
                cost = 50,
                metadata = 'bike',
            },
            ["driver_license"] = {
                label = "Licencia de conducir",
                cost = 50,
                metadata = "driver"
            },
            ["weaponlicense"] = {
                label = "Licencia de armas",
                cost = 50,
                metadata = "weapon"
            },
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(240.3, -1379.89, 33.74),
        showBlip = false,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = "Escuela de manejo"
        },
        instructors = {
            "DJD56142",
            "DXT09752",
            "SRI85140",
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_hasjew_01',
        coords = vec4(-262.79, -964.18, 30.22, 181.71),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    {
        model = 'a_m_m_eastsa_02',
        --coords = vec4(240.91, -1379.2, 32.74, 138.96),
        coords = vec4(0,0,0,0),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = false,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}
