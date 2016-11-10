require 'rubygems'
require 'twilio-ruby'

account_sid = "XXXXXX"
auth_token = "XXXXXXXXX"


@client = Twilio::REST::Client.new account_sid, auth_token

class Array
	def random_element
		self[rand(length)]
	end
end

magic_answers = ["It is certain",
                  "It is decidedly so",
                  "Without a doubt",
                  "Yes, definitely",
                  "You may rely on it",
                  "As I see it, yes",
                  "Most likely",
                  "Outlook good",
                  "Yes",
                  "Signs point to yes",
                  "Reply hazy try again",
                  "Ask again later",
                  "Better not tell you now",
                  "Cannot predict now",
                  "Concentrate and ask again",
                  "Don't count on it",
                  "My reply is no",
                  "My sources say no",
                  "Outlook not so good",
                  "Very doubtful"
]

answer = magic_answers.random_element

puts "What would you like to ask the Magic-8 ball?"
gets.chomp.downcase

@client.account.messages.create({
      :messaging_service_sid => 'xxxxx', 
      :to => '+XXXXXX', 
      :body => answer,  
})