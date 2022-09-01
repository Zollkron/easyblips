fx_version 'cerulean'
game 'gta5'

author 'Zollkron'
version '0.2.0'

shared_scripts {
    'config.lua',
    '@es_extended/imports.lua',
    '@es_extended/locale.lua',
    'locales/*.lua'
}

client_scripts {
    'client.lua',
}

dependencies {
    'es_extended'
}
