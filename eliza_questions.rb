require_relative 'response'

Response.add_response 'dog', 'Do you like animals?', 'What about other animals?'
Response.add_response 'mom', 'Tell me more about your mother.', 'Tell me more about your family.'
Response.add_response 'hurt', 'How has your health been?'

Response.dummie_response 'Tell me more.', "That's interesting.", 'and how do you feel about that.'
Response.add_response '^^', 'Go on'
Response.end_session 'Lets get into that next time'
Response.go_crazy 'NO, NO, NO'
