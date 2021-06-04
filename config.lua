Cfg = {
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
ReceptionLocation = {x = -1016.1, y = -758.37, z = 19.8442}, --[TR] Resepsiyon konumu [EN] Reception location 
Price = 20000, --[TR] Oda kiralama ücreti [EN] Room rental fee 
           --[TR] Bu kısımdan pedin konumunu, animasyonunu ve görünüşünü düzenleyebilirsiniz
Pedler = { --[EN] From this section you can edit the position, animation and appearance of the ped.
	[1] = { handle = nil, model ="mp_m_waremech_01", coords = vector3(737.8412, -1077.96, 22.168), heading = 275.25, text = "Yedek Anahtarci", weapon = "WEAPON_UNARMED", anim = { type = 2, dict = "mini@repair", name = "fixing_a_ped"} },
},
SpareKeyLocation = vector3(737.3297, -1077.97, 22.168), --blips kısmından da düzenlemeniz lazım.
MotelWeightLimit = 250, --[TR] Motel deposu ağırlık limiti [EN] Motel stash weight limit
MotelItemLimit = 100, --[TR] Motel deposu slot sayısı [EN] Motel stash slot count
Blips = { --[TR] Yedek anahtar blip [EN]Spare key blip
	[1] = {title = "Yedek Anahtarci", color = 2, id = 255, coords = vector3(737.2335, -1078.09, 22.168) },
}
}

elevators = { --[TR] Asansör konumları [EN] Elevator locations 
[1] = { 
    [1] = {x = -1009.12, y = -755.1, z = 19.84}, 
    [2] = {x = -1009.37, y = -752.83, z = 31.33},
    [3] = {x = -1009.37, y = -752.83, z = 34.79},
    [4] = {x = -1009.37, y = -752.83, z = 38.20},
    [5] = {x = -1009.37, y = -752.83, z = 41.53},
    [6] = {x = -1009.37, y = -752.83, z = 44.85},
    [7] = {x = -1009.37, y = -752.83, z = 48.17},
    [8] = {x = -1009.37, y = -752.83, z = 51.57},
    [9] = {x = -1009.37, y = -752.83, z = 54.90},
    [10]= {x = -1009.37, y = -752.83, z = 58.21},
    [11]= {x = -1009.37, y = -752.83, z = 61.50},
    [12]= {x = -1009.37, y = -752.83, z = 64.81},
    [13]= {x = -1009.37, y = -752.83, z = 68.18},
    [14]= {x = -1009.37, y = -752.83, z = 71.66},
},
[2] = {
    [1] = {x = 185.61, y = -1078.41, z = 29.27},
    [2] = {x = 171.97, y = -1058.63, z = 48.41},
    [3] = {x = 171.97, y = -1058.63, z = 54.89},
    [4] = {x = 171.97, y = -1058.63, z = 60.98},
    [5] = {x = 171.97, y = -1058.63, z = 67.42},
}
}
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
almez = {  --[TR] Oda koordinatları [EN] Motel room locations
    [1] = {
        info = {
            coords = vector3(-1002.812, -731.8, 31.51),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 31.51), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.568, -730.845, 31.333), locked = true}
        },
    },
    [2] = {
        info = {
            coords = vector3(-1002.812, -739.14, 31.51),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.14, 31.51), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.696, -738.157, 31.333), locked = true}
        },
    },
    [3] = {
        info = {
            coords = vector3(-1002.812, -746.55, 31.51),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.55, 31.51), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.492, -745.592, 31.333), locked = true}
        },
    },
    [4] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 31.51),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 31.51), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.497, -753.149, 31.333), locked = true}
        },
    },
    [5] = {
        info = {
            coords = vector3(-1002.83, -761.39, 31.51),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.83, -761.39, 31.51), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.546, -760.424, 31.333), locked = true}
        },
    },
    [6] = {
        info = {
            coords = vector3(-1002.85, -768.79, 31.51),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.85, -768.79, 31.51), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.696, -767.819, 31.333), locked = true}
        },
    },
    [7] = {
        info = {
            coords = vector3(-1002.863, -776.35, 31.51),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.35, 31.51), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.668, -775.391, 31.333), locked = true}
        },
    },
    [8] = {
        info = {
            coords = vector3(-1002.812, -731.8, 34.97823),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 34.97823), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.39, -730.61, 34.7358), locked = true}
        },
    },
    [9] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 34.97823),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 34.97823), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.36, -737.89, 34.7358), locked = true}
        },
    },
    [10] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 34.97823),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 34.97823), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.46, -745.24, 34.7358), locked = true}
        },
    },
    [11] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 34.97823),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 34.97823), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.49, -752.89, 34.7358), locked = true}
        },
    },
    [12] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 34.97823),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 34.97823), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.36, -760.04, 34.7358), locked = true}
        },
    },
    [13] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 34.97823),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 34.97823), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.66, -767.83, 34.7358), locked = true}
        },
    },
    [14] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 34.97823),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 34.97823), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.30, -775.34, 34.7358), locked = true}
        },
    },
    [15] = {
        info = {
            coords = vector3(-1002.935, -731.8, 38.40171),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.935, -731.8, 38.40171), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.53, -730.70, 38.4527), locked = true}
        },
    },
    [16] = {
        info = {
            coords = vector3(-1002.935, -739.1418, 38.40171),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.935, -739.1418, 38.40171), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.61, -738.07, 38.4527), locked = true}
        },
    },
    [17] = {
        info = {
            coords = vector3(-1002.935, -746.5566, 38.40171),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.935, -746.5566, 38.40171), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.39, -745.36, 38.3897), locked = true}
        },
    },
    [18] = {
        info = {
            coords = vector3(-1002.948, -754.1133, 38.40171),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.948, -754.1133, 38.40171), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.47, -752.86, 38.3897), locked = true}
        },
    },
    [19] = {
        info = {
            coords = vector3(-1002.96, -761.3953, 38.40171),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.96, -761.3953, 38.40171), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.61, -760.33, 38.3897), locked = true}
        },
    },
    [20] = {
        info = {
            coords = vector3(-1002.973, -768.7907, 38.40171),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.973, -768.7907, 38.40171), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.76, -767.76, 38.3897), locked = true}
        },
    },
    [21] = {
        info = {
            coords = vector3(-1002.986, -776.3557, 38.40171),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.986, -776.3557, 38.40171), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.73, -775.32, 38.3897), locked = true}
        },
    },
    [22] = {
        info = {
            coords = vector3(-1002.812, -731.8, 41.71342),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 41.71342), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.27, -730.90, 41.7287), locked = true}
        },
    },
    [23] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 41.71342),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 41.71342), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.21, -738.00, 41.7287), locked = true}
        },
    },
    [24] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 41.71342),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 41.71342), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.67, -745.57, 41.7287), locked = true}
        },
    },
    [25] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 41.71342),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 41.71342), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.56, -753.01, 41.7287), locked = true}
        },
    },
    [26] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 41.71342),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 41.71342), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.56, -760.37, 41.7287), locked = true}
        },
    },
    [27] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 41.71342),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 41.71342), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.27, -767.80, 41.7287), locked = true}
        },
    },
    [28] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 41.71342),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 41.71342), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.56, -775.48, 41.7287), locked = true}
        },
    },
    [29] = {
        info = {
            coords = vector3(-1002.812, -731.8, 45.04056),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 45.04056), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.34, -730.62, 44.9417), locked = true}
        },
    },
    [30] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 45.04056),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 45.04056), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.36, -738.08, 44.9417), locked = true}
        },
    },
    [31] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 45.04056),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 45.04056), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.48, -745.40, 44.9417), locked = true}
        },
    },
    [32] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 45.04056),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 45.04056), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.59, -753.00, 44.9417), locked = true}
        },
    },
    [33] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 45.04056),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 45.04056), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.54, -760.44, 44.9417), locked = true}
        },
    },
    [34] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 45.04056),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 45.04056), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.46, -767.64, 44.9417), locked = true}
        },
    },
    [35] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 45.04056),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 45.04056), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.31, -775.27, 44.9417), locked = true}
        },
    },
    [36] = {
        info = {
            coords = vector3(-1002.812, -731.8, 48.36176),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 48.36176), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.42, -730.73, 48.0287), locked = true}
        },
    },
    [37] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 48.36176),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 48.36176), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.27, -737.86, 48.0287), locked = true}
        },
    },
    [38] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 48.36176),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 48.36176), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.25, -745.49, 48.0287), locked = true}
        },
    },
    [39] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 48.36176),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 48.36176), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.41, -752.94, 48.0287), locked = true}
        },
    },
    [40] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 48.36176),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 48.36176), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.34, -760.16, 48.0287), locked = true}
        },
    },
    [41] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 48.36176),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 48.36176), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.58, -767.87, 48.0287), locked = true}
        },
    },
    [42] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 48.36176),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 48.36176), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.36, -775.35, 48.0287), locked = true}
        },
    },
    [43] = {
        info = {
            coords = vector3(-1002.812, -731.8, 51.75414),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 51.75414), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.30, -730.87, 51.5459), locked = true}
        },
    },
    [44] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 51.75414),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 51.75414), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.40, -737.87, 51.5459), locked = true}
        },
    },
    [45] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 51.75414),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 51.75414), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.42, -745.32, 51.5459), locked = true}
        },
    },
    [46] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 51.75414),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 51.75414), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.33, -752.84, 51.5459), locked = true}
        },
    },
    [47] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 51.75414),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 51.75414), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.53, -760.36, 51.5459), locked = true}
        },
    },
    [48] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 51.75414),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 51.75414), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.47, -767.64, 51.5459), locked = true}
        },
    },
    [49] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 51.75414),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 51.75414), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.49, -775.42, 51.5459), locked = true}
        },
    },
    [50] = {
        info = {
            coords = vector3(-1002.812, -731.8, 55.0841),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 55.0841), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.40, -730.51, 54.9478), locked = true}
        },
    },
    [51] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 55.0841),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 55.0841), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.34, -737.98, 54.9478), locked = true}
        },
    },
    [52] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 55.0841),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 55.0841), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.47, -745.44, 54.9478), locked = true}
        },
    },
    [53] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 55.0841),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 55.0841), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.44, -753.04, 54.9478), locked = true}
        },
    },
    [54] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 55.0841),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 55.0841), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.39, -760.06, 54.9478), locked = true}
        },
    },
    [55] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 55.0841),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 55.0841), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.33, -767.57, 54.9478), locked = true}
        },
    },
    [56] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 55.0841),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 55.0841), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.34, -775.42, 55.1918), locked = true}
        },
    },
    [57] = {
        info = {
            coords = vector3(-1002.812, -731.8, 58.39742),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 58.39742), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.30, -730.56, 57.7117), locked = true}
        },
    },
    [58] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 58.39742),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 58.39742), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.45, -737.97, 57.7117), locked = true}
        },
    },
    [59] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 58.39742),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 58.39742), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.28, -745.34, 57.7117), locked = true}
        },
    },
    [60] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 58.39742),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 58.39742), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.38, -753.08, 57.7117), locked = true}
        },
    },
    [61] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 58.39742),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 58.39742), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.36, -760.33, 57.7117), locked = true}
        },
    },
    [62] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 58.39742),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 58.39742), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.47, -767.57, 57.7117), locked = true}
        },
    },
    [63] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 58.39742),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 58.39742), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.35, -775.30, 57.7117), locked = true}
        },
    },
    [64] = {
        info = {
            coords = vector3(-1002.812, -731.8, 61.68562),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 61.68562), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.44, -730.83, 61.5015), locked = true}
        },
    },
    [65] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 61.68562),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 61.68562), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.41, -738.30, 61.5015), locked = true}
        },
    },
    [66] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 61.68562),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 61.68562), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.27, -745.54, 61.5015), locked = true}
        },
    },
    [67] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 61.68562),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 61.68562), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.45, -753.03, 61.5015), locked = true}
        },
    },
    [68] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 61.68562),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 61.68562), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.33, -760.30, 61.5015), locked = true}
        },
    },
    [69] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 61.68562),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 61.68562), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.18, -767.76, 61.5015), locked = true}
        },
    },
    [70] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 61.68562),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 61.68562), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.28, -775.32, 61.5015), locked = true}
        },
    },
    [71] = {
        info = {
            coords = vector3(-1002.812, -731.8, 65.00317),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 65.00317), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.35, -730.55, 64.9035), locked = true}
        },
    },
    [72] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 65.00317),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 65.00317), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.59, -738.12, 64.9035), locked = true}
        },
    },
    [73] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 65.00317),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 65.00317), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.31, -745.54, 64.9035 ), locked = true}
        },
    },
    [74] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 65.00317),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 65.00317), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.57, -753.16, 64.9035), locked = true}
        },
    },
    [75] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 65.00317),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 65.00317), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.39, -760.52, 64.9035), locked = true}
        },
    },
    [76] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 65.00317),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 65.00317), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.33, -767.61, 64.9035), locked = true}
        },
    },
    [77] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 65.00317),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 65.00317), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.40, -775.34, 64.9035), locked = true}
        },
    },
    [78] = {
        info = {
            coords = vector3(-1002.812, -731.8, 68.37129),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 68.37129), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.45, -730.67, 68.4317), locked = true}
        },
    },
    [79] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 68.37129),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 68.37129), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.58, -738.37, 68.4317), locked = true}
        },
    },
    [80] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 68.37129),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 68.37129), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.43, -745.78, 68.4317), locked = true}
        },
    },
    [81] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 68.37129),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 68.37129), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.33, -753.08, 68.4317), locked = true}
        },
    },
    [82] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 68.37129),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 68.37129), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.59, -760.41, 68.4317), locked = true}
        },
    },
    [83] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 68.37129),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 68.37129), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.43, -767.79, 68.4317), locked = true}
        },
    },
    [84] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 68.37129),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 68.37129), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.38, -775.28, 68.4317), locked = true}
        },
    },
    [85] = {
        info = {
            coords = vector3(-1002.812, -731.8, 71.84319),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -731.8, 71.84319), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.42, -730.75, 71.5189), locked = true}
        },
    },
    [86] = {
        info = {
            coords = vector3(-1002.812, -739.1418, 71.84319),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -739.1418, 71.84319), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.38, -738.09, 71.5189), locked = true}
        },
    },
    [87] = {
        info = {
            coords = vector3(-1002.812, -746.5566, 71.84319),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.812, -746.5566, 71.84319), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.46, -745.53, 71.5189), locked = true}
        },
    },
    [88] = {
        info = {
            coords = vector3(-1002.826, -754.1133, 71.84319),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.826, -754.1133, 71.84319), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.35, -752.91, 71.5189), locked = true}
        },
    },
    [89] = {
        info = {
            coords = vector3(-1002.838, -761.3953, 71.84319),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.838, -761.3953, 71.84319), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.50, -760.41, 71.5189), locked = true}
        },
    },
    [90] = {
        info = {
            coords = vector3(-1002.851, -768.7907, 71.84319),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.851, -768.7907, 71.84319), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.46, -767.74, 71.5189), locked = true}
        },
    },
    [91] = {
        info = {
            coords = vector3(-1002.863, -776.3557, 71.84319),
            price = 150000,
            data = {}
        },
        doors = {
            [1] = {coords = vector3(-1002.863, -776.3557, 71.84319), h = 269.90, locked = true, obj = nil, doorhash = 1398355146}
        },
        stashes = {
            [1] = {coords = vector3(-996.36, -775.21, 71.5189), locked = true}
        },
    },
}
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]
    --[TR] Tüm sorularınız için discord üzerinden ulaşabilirsiniz. almez#9087 [EN]For any questions, you can reach us on discord almez#9087]