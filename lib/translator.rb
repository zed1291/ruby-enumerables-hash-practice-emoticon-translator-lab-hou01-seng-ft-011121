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
  hash = {}
  emoticons.each do |meaning, symbols|
    hash[meaning][:english] << symbols
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
