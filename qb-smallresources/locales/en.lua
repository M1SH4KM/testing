local Translations = {
    afk = {
        will_kick = 'Estás AFK y serás expulsado en ',
        time_seconds = ' segundos!',
        time_minutes = ' minuto(s)!',
        kick_message = 'Fuiste pateado por ser AFK',
    },
    wash = {
        in_progress = "El vehículo está siendo lavado. ..",
        wash_vehicle = "[E] Lavar Vehículo",
        wash_vehicle_target = "Lavar Vehículo",
        dirty = "El vehículo no está sucio.",
        cancel = "Lavado cancelado ..",
    },
    consumables = {
        eat_progress = "Comiendo..",
        drink_progress = "Bebiendo..",
        liqour_progress = "Bebiendo licor..",
        coke_progress = "Olfateo rápido..",
        crack_progress = "Fumando crack..",
        ecstasy_progress = "Pastillas pop",
        healing_progress = "Cicatrización",
        meth_progress = "Fumando cola de metanfetamina",
        joint_progress = "Prendiendo joint...",
        use_parachute_progress = "Poniéndose el paracaídas...",
        pack_parachute_progress = "Empaquetando paracaídas..",
        no_parachute = "¡No tienes paracaídas!",
        armor_full = "¡Ya tienes suficiente armadura!",
        armor_empty = "No llevas chaleco...",
        armor_progress = "Ponerse la armadura corporal...",
        heavy_armor_progress = "Ponerse una armadura corporal...",
        remove_armor_progress = "Quitándose la armadura corporal..",
        canceled = "Cancelado..",
    },
    cruise = {
        unavailable = "Control de crucero no disponible",
        activated = "Crucero activado ",
        deactivated = "Crucero desactivado",
    },
    editor = {
        started = "¡Comenzaste a grabar!",
        save = "¡Grabación guardada!",
        delete = "¡Grabación eliminada!",
        editor = "¡Más tarde caimán!"
    },
    firework = {
        place_progress = "Colocando objeto..",
        canceled = "Cancelado..",
        time_left = "Fuegos artificiales terminados ~r~"
    },
    seatbelt = {
        use_harness_progress = "Colocación del arnés de carrera",
        remove_harness_progress = "Quitar el arnés de carrera",
        no_car = "No estás en un auto."
    },
    teleport = {
        teleport_default = 'Usar elevador'
    },
    pushcar = {
        stop_push = "[E] Deja de empujar"
    }


}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})