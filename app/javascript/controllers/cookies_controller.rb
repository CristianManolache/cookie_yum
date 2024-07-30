class CookiesController < ApplicationController
  def detect
    html_content = params[:html_content] # Assume you pass HTML content as a parameter
    detector = CookieyumRails::CookieDetector.new(html_content)
    @result = detector.process

    respond_to do |format|
      format.html { render :result } # You need a corresponding view to show the result
      format.json { render json: { result: @result } }
    end
  end
end
