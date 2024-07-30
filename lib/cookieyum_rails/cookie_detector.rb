module CookieyumRails
  class CookieDetector
    def initialize(html_content)
      @html_content = html_content
      @ai_service = AIService.new(CookieyumRails.ai_api_key)
    end

    def process
      result = @ai_service.detect_cookie_div(@html_content)
      if result.downcase.include?("div with the class 'cookie'")
        # logging ( check the rails server for the log)
        Rails.logger.info 'Cookie div detected and handled'
      else
        # logging ( check the rails server for the log)
        Rails.logger.info 'No cookie div detected - Change the class of your div container to "cookie" '
      end
    end
  end
end
