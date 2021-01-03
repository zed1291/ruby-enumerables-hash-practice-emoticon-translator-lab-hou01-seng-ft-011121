require 'yaml'

def load_library path
  emoticons = YAML.load_file(path)
  ordered_emoticons = {}
   emoticons.each do |meanings, symbols|
     ordered_emoticons[meanings] = {
      :english => symbols[0],
      :japanese => symbols[1]
    }
   end
   ordered_emoticons
end

def get_english_meaning path emoticon
  emoticons = YAML.load_file(path)
end

def get_japanese_emoticon
  # code goes here
end
