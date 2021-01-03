require 'yaml'

def load_library path
  emoticons = YAML.load_file(path)
  #this is the data
  # happy:
  # - ":)"
  # - "(＾ｖ＾)"

  #this is what i want
  # {
  #     'happy' => {
  #        :english => ":)",
  #        :japanese => "(＾ｖ＾)"
  #     }
  #  }
  ordered_emoticons = {}
   emoticons.each do |meanings, symbols|
     ordered_emoticons[meanings] = {:english => symbols[0], :japanese => symbols[1]}
   end
   ordered_emoticons
 end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
