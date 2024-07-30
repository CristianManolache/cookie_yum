require 'openai'

module CookieyumRails
  class AIService
    def initialize(api_key)
      @client = OpenAI::Client.new(api_key: api_key)
    end

    # Method to detect a div with class 'cookie'
    def detect_cookie_div(html_content)
      response = @client.completions.create(
        model: 'text-davinci-003',
        prompt: "Analyze the following HTML content and determine if it contains a div with the class 'cookie': #{html_content}",
        max_tokens: 50,
        temperature: 0
      )
      response.dig('choices', 0, 'text').strip
    end
  end
end
