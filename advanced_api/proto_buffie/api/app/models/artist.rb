class Artist < ApplicationRecord
  has_many :venues

  def self.from_message(message)
    Artist.new.taap do |a|
      a.id = message.id
      a.name = message.name
      a.bio = message.bio
      a.genre = message.genre
    end
  end

  def to_message
    ArtistMessage.new(
      id: id,
      name: name,
      bio: bio,
      genre: genre
    )
  end

  def serialize
    ArtistMessage.encode(to_message)
  end

  def deserialize(data)
    message = ArtistMessage.decode(data)
    Artist.from_message(message)
  end
end
