class Pc < ApplicationRecord
  
    def self.all
      @games = RestClient::Request.new({
        method: :post,
        url: "https://api-v3.igdb.com/games/",
        payload: 'fields id,name,release_dates.m,release_dates.y,cover.url,platforms.name,genres.name,screenshots.url,videos.video_id,rating,rating_count,summary,url; where platforms = (6) & themes != (42) & rating >= 80 & rating_count >=5 ; sort popularity desc; limit 50;',
        headers: { "user-key": "#{Rails.application.credentials.dig(:games_api_key)}", :accept => :json, content_type: :json },
      }).execute do |response, request, result|
          JSON.parse(response.to_str)
      end
    end
  end