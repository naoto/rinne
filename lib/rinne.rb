require "rinne/version"

module Rinne

  class << self
    def camelize(spell)
      spell.split("-").map! {|module_word|
        module_word.split("_").map { |class_word|
          class_word.capitalize!
        }.join
      }.join("::")
    end
    alias :tensei :camelize

    def classify(path, filetype = "*")
      camelize File.basename(path, ".#{filetype}")
    end
  end

end
