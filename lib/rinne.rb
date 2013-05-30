require "rinne/version"

module Rinne

  class << self
    def camelize(spell, filetype = nil)
      spell.gsub(/\.#{filetype}/,'').split(/_/).map { |word|
        word.capitalize!
      }.join
    end
    alias :tensei :camelize

    def classify(path)
      camelize File.basename(path, ".*")
    end
  end

end
