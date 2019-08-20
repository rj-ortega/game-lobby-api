# frozen_string_literal: true

class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :id, :name, :img, :platform, :score, :description, :playing, :wishlist, :finished
end
