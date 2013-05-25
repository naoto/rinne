require "rinne/version"

module Rinne

  def self.tensei(spell)
    spell.split(/_/).map { |word|
      word.capitalize!
    }.join
  end
  
end
