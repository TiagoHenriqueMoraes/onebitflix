class Api::V1::FavoriteSerializer
  include FastJsonapi::ObjectSerializer

  attribute :id do |object|
    object.favorite.id
  end

  attribute :type do |object|
    object.favorite.type
  end

  attribute :title do |object|
    object.favorite.title
  end

  attribute :description do |object|
    object.favorite.description
  end

  attribute :thumbnail_url do |object|
    "/thumbnails/#{object.favorite.thumbnail_key}"
  end
end
