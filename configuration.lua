--[[
                     _   _        _
     _ __ ___   __ _| |_| |_ __ _| |_ __ _
    | '_ ` _ \ / _` | __| __/ _` | __/ _` |
    | | | | | | (_| | |_| || (_| | || (_| |
    |_| |_| |_|\__,_|\__|\__\__,_|\__\__,_|

    Configuration file for mattata v1.1.0

    Copyright 2017 Matthew Hesketh <wrxck0@gmail.com>
    This code is licensed under the MIT. See LICENSE for details.

    Each value in an array should be comma separated, with the exception of the last value!
    Make sure you always update your configuration file after pulling changes from GitHub!

]]

local get_plugins = function(extension, directory)
    extension = extension and tostring(extension) or 'mattata'
    if extension:match('^%.') then
        extension = extension:match('^%.(.-)$')
    end
    directory = directory and tostring(directory) or 'plugins'
    if directory:match('/$') then
        directory = directory:match('^(.-)/$')
    end
    local plugins = {}
    local all = io.popen('mkdir -p ' .. directory .. '; ls ' .. directory .. '/'):read('*all')
    for plugin in all:gmatch('[%w_-]+%.' .. extension .. ' ?') do
        plugin = plugin:match('^([%w_-]+)%.' .. extension .. ' ?$')
        table.insert(plugins, plugin)
    end
    return plugins
end

return { -- Rename this file to configuration.lua for the bot to work!
    ['bot_token'] = '986517874:AAEek3RWwcXrz99YvIb5TQEu6h6TrQRb5dM', -- In order for the bot to actually work, you MUST insert the Telegram
    -- bot API token you received from @BotFather.
    -- The following two tokens will require you to have setup payments with @BotFather, and
    -- a Stripe account with @stripe!
    ['stripe_live_token'] = '', -- Payment token you receive from @BotFather.
    ['stripe_test_token'] = '', -- Test payment token you receive from @BotFather.
    ['admins'] = { 
        722295218
        991912417

    },
    ['language'] = 'en', -- The two character locale to set your default language to.
    ['log_chat'] = nil, -- This needs to be the numerical identifier of the chat you wish to log
    -- errors into. If it's not a private chat it should begin with a '-' symbol.
    ['log_admin_actions'] = true, -- Should administrative actions be logged? [true/false]
    ['log_channel'] = nil, -- This needs to be the numerical identifier of the channel you wish
    -- to log administrative actions in by default. It should begin with a '-' symbol.
    ['bug_reports_chat'] = nil, -- This needs to be the numerical identifier of the chat you wish to send
    -- bug reports into. If it's not a private chat it should begin with a '-' symbol.
    ['counter_channel'] = nil, -- This needs to be the numerical identifier of the channel you wish
    -- to forward messages into, for use with the /counter command. It should begin with a '-' symbol.
    ['download_location'] = '/tmp/', -- The location to save all downloaded media to.
    ['respond_to_misc'] = true, -- Respond to shitpostings/memes in mattata.lua? [true/false]
    ['max_copypasta_length'] = 300, -- The maximum number of characters a message can have to be
    -- able to have /copypasta used on it.
    ['debug'] = false, -- Turn this on to print EVEN MORE information to the terminal.
    ['plugins'] = get_plugins(),
    ['redis'] = { -- Configurable options for connecting the bot to redis. Do NOT modify
    -- these settings if you don't know what you're doing!
        ['host'] = '127.0.0.1',
        ['port'] = 6379,
        ['password'] = gspnavy000,
        ['db'] = Mattatatest719
    },
    ['keys'] = { -- API keys needed for the full functionality of several plugins.
        ['cats'] = '', -- http://thecatapi.com/api-key-registration.html
        ['translate'] = '', -- https://tech.yandex.com/keys/get/?service=trnsl
        ['lyrics'] = '', -- https://developer.musixmatch.com/admin/applications
        ['lastfm'] = '', -- http://www.last.fm/api/account/create
        ['weather'] = '', -- https://darksky.net/dev/register
        ['youtube'] = '', -- https://console.developers.google.com/apis
        ['bing'] = '', -- https://datamarket.azure.com/account/keys
        ['flickr'] = '', -- https://www.flickr.com/services/apps/create/noncommercial/?
        ['news'] = '', -- https://newsapi.org/
        ['twitch'] = '', -- https://twitchapps.com/tmi/
        ['pastebin'] = '', -- https://pastebin.com/api
        ['dictionary'] = {  -- https://developer.oxforddictionaries.com/
            ['id'] = '',
            ['key'] = ''
        },
        ['adfly'] = { -- https://login.adf.ly/login
            ['apikey'] = '',
            ['userid'] = ''
        },
        ['pasteee'] = '', -- https://paste.ee/
        ['google'] = { -- https://console.developers.google.com/apis
            ['api_key'] = '',
            ['cse_key'] = ''
        },
        ['steam'] = '', -- https://steamcommunity.com/dev/apikey
        ['spotify'] = { -- https://developer.spotify.com/my-applications/#!/applications/create
            ['client_id'] = '',
            ['client_secret'] = '',
            ['redirect_uri'] = ''
        },
        ['twitter'] = { -- https://apps.twitter.com/app/new
            ['consumer_key'] = '',
            ['consumer_secret'] = ''
        },
        ['imgur'] = { -- https://api.imgur.com/oauth2/addclient
            ['client_id'] = '',
            ['client_secret'] = ''
        }
    },
    ['errors'] = { -- Messages to provide a more user-friendly approach to errors.
        ['connection'] = 'Connection ka lafda h wait karo.',
        ['results'] = 'result nhi mil rha kuch aur try karo ya api sahi nhi h.',
        ['supergroup'] = 'commands super group me hi use ho sakte h.',
        ['admin'] = 'Is command ko use karne ke liye apko ek admin ki jarurat hogi.',
        ['unknown'] = 'is bande ka ek bhi msg nhi dekha maine. If you would like to teach me who they are, forward a message from them to any chat that I\'m in.',
        ['generic'] = 'kuch to gadbad h Daya!!abey saley.'
    },
    ['voteban'] = { -- Values used in plugins/administration.lua, for plugins/voteban.lua functionality.
        ['upvotes'] = {
            ['maximum'] = 50,
            ['minimum'] = 2
        },
        ['downvotes'] = {
            ['maximum'] = 50,
            ['minimum'] = 2
        }
    },
    ['administration'] = { -- Values used in plugins/administration.lua.
        ['warnings'] = {
            ['maximum'] = 10,
            ['minimum'] = 2
        }
    },
    ['join_messages'] = { -- Values used in plugins/administration.lua.
        'Welcome, NAME!',
        'To agye ap kaisey ho?, NAME!',
        'Majey karna, NAME!',
        'Acha laga ap aye badey log, NAME!',
        'Howdy, NAME!',
        'Hi, NAME!'
    },
    ['stickers'] = { -- Values used in mattata.lua, for administrative plugin functionality.
    -- These are the file_id values for stickers which are binded to the relevant command.
        ['ban'] = {
            'CAADBQADCAADslkNK5zp7SuBBNRlFgQ',
            'CAADBQADCAADslkNK5zp7SuBBNRlFgQ'
        },
        ['warn'] = {
            'CAADBQADCAADslkNK5zp7SuBBNRlFgQ',
            'CAADBQADCAADslkNK5zp7SuBBNRlFgQ'
        },
        ['kick'] = {
            'CAADBQADCAADslkNK5zp7SuBBNRlFgQ'
        }
    }
}

--[[

    End of configuration, you're good to go.
    Use `./launch.sh` to start the bot.
    If you can't execute the script, try running `chmod +x launch.sh`

]]