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

    def self.downcase_text(text)
        text.downcase
    end
   
    def self.capitalize_text(text)
        text = text.split(/(?<=[.?!]) /)
        text = text.map{|item| item.capitalize}
        text = text.join(' ')
        return text
    end
    
    def self.titleize_text(text)
        text.titleize
    end
end
