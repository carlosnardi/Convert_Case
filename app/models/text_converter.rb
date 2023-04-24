class TextConverter < ApplicationRecord
    def self.text_length(text)
        text.length
      end
    
    def self.text_words(text)
        text.split(' ').size
    end
    
    def self.upcase_text(text)
        text.upcase
    end
end
