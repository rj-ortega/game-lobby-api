class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :id, :name, :genres, :cover, :rating, :description, :playing, :wishlist, :finished
end
