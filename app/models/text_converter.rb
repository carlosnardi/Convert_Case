class TextConverter < ApplicationRecord
    def self.text_length(text)
        text.length
      end
    
    def self.text_words(text)
        text.split(' ').size
    end

    def self.text_lines(text)
        text.split("\n").size
    end

    def self.upcase_text(text)
        text.upcase
    end

    def self.downcase_text(text)
        text.downcase
    end
   
    def self.capitalize_text(text)
        text = text.split(/(?<=[.?!])[\s\n]/)
        text = text.map{|item| item.capitalize}
        text = text.join(' ')
        return text
    end
    
    def self.titleize_text(text)
        text.titleize
    end

    def self.invert_text(text)
        text = text.split('')
        text = text.map do |item|
            if item == item.upcase
                item.downcase
            elsif item == item.downcase
                item.upcase                
            else
                item
            end
        end
        return text.join('')
    end
end
