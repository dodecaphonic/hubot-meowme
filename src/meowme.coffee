# cat me - Get a cat
# cat bomb N - Get N cats
# how many cats are there - Get the number of cats available
# cute me - Get a cute animal
# cute bomb N - Get N cute animals
# how many cute animals are there - Get the number of cute animals available
#
# Description:
#   Catme is the most important thing in your life, even more than pugs!
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot cat me - Get a cat
#   hubot cat bomb N - Get N cats
#   hubot how many cats are there - Get the number of cats available
#   hubot cute me - Get a cute animal
#   hubot cute bomb N - Get N cute animals
#   hubot how many cute animals are there - Get the number of cute animals available

module.exports = (robot) ->

  meowme_url = process.env.MEOWME_URL || 'http://remeow.herokuapp.com'

  robot.respond /cat me/i, (msg) ->
    msg.http("#{meowme_url}/cats/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).cat

  robot.respond /cat bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    msg.http("#{meowme_url}/cats/bomb?count=" + count)
      .get() (err, res, body) ->
        msg.send cat for cat in JSON.parse(body).cats

  robot.respond /how many cats are there/i, (msg) ->
    msg.http("#{meowme_url}/cats/count")
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body).cat_count} cats."

  robot.respond /cute me/i, (msg) ->
    msg.http("#{meowme_url}/cute/random")
      .get() (err, res, body) ->
        msg.send JSON.parse(body).cat

  robot.respond /cute bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    msg.http("#{meowme_url}/cute/bomb?count=" + count)
      .get() (err, res, body) ->
        msg.send cat for cat in JSON.parse(body).cats

  robot.respond /how many cute animals are there/i, (msg) ->
    msg.http("#{meowme_url}/cute/count")
      .get() (err, res, body) ->
        msg.send "There are #{JSON.parse(body).cat_count} cute animals."
