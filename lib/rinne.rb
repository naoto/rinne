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

    def to_snake(str)
      str.gsub(/::/, '/').
        gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
        gsub(/([a-z\d])([A-Z])/,'\1_\2').
        tr("-","_").downcase
    end
  end

end
