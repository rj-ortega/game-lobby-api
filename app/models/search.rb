class Search < ApplicationRecord

    def self.all (game)
        @games = RestClient::Request.new({
            method: :post,
            url: "https://api-v3.igdb.com/games/",
            payload: 'fields id,name,cover.url,platforms.name,screenshots.url,videos.video_id,rating,rating_count,summary,url; where rating >= 80 & rating_count >=5 ; sort popularity desc; limit 50;',
            headers: { "user-key": "#{Rails.application.credentials.dig(:games_api_key)}", :accept => :json, content_type: :json },
            }).execute do |response, request, result|
                JSON.parse(response.to_str)
    end
end
