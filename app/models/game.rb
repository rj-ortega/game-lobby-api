class Game < ApplicationRecord
  belongs_to :user

  def self.all
    @games = RestClient::Request.new({
      method: :post,
      url: "https://api-v3.igdb.com/games/",
      body: "search “zelda”; where rating >= 80;",
      headers: { "user-key": "#{Rails.application.credentials.dig(:games_api_key)}", :accept => :json, content_type: :json },
    }).execute do |response, request, result|
      case response.code
      when 400
        [:error, JSON.parse(response.to_str)]
      when 200
        [:success, JSON.parse(response.to_str)]
      else
        fail "Invalid response #{response.to_str} received."
      end
    end
  end
end