# Description:
#   Link to Agileista stories when we see a #123 pattern.
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_AGILEISTA_DOMAIN
#
# Commands:
#   hubot #1234 - Reply with link to agileista story 1234
#
# Author:
#   smulube

questions = [
  "Did you mean",
  "Is that",
  "Could that be"
]

module.exports = (robot) ->
  robot.hear /#(\d+)/, (msg) ->
    domain = process.env.HUBOT_AGILEISTA_DOMAIN
    story_id = escape(msg.match[1])
    msg.send "#{msg.random questions}: #{domain}/user_stories/#{story_id}"
