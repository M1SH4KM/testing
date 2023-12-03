fx_version 'cerulean'
game 'gta5'

files {
    'data/**/carcols.meta', 
    'data/**/vehicles.meta',
    'data/**/carvariations.meta',
    'data/**/carcols.meta',
    'data/**/handling.meta',
    'data/**/vehiclelayouts.meta',
}

data_file ('HANDLING_FILE') ('data/**/handling.meta')
data_file ('VEHICLE_METADATA_FILE') ('data/**/vehicles.meta')
data_file ('CARCOLS_FILE') ('data/**/carcols.meta')
data_file ('VEHICLE_VARIATION_FILE') ('data/**/carvariations.meta')
data_file ('VEHICLE_LAYOUTS_FILE') ('data/**/vehiclelayouts.meta')


files {
    'data/**.dat54.rel',
    'data/**.dat151',
    'dlc_/**.awc',
}

data_file 'AUDIO_WAVEPACK' 'dlc_expeditious'
data_file 'AUDIO_SOUNDDATA' 'data/dlcexpeditious_sounds.dat'
data_file 'AUDIO_SOUNDDATA' 'data/lspdpack_game.dat151'
data_file 'AUDIO_SOUNDDATA' 'data/polcarasound_game.dat151'