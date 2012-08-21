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
#   #1234 - Listen for all text matching this pattern and chip in with a link to that agileista story
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
