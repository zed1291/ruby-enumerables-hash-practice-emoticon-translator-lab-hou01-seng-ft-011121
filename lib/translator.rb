# require modules here
require 'yaml'

def load_library
  # code goes here
  library = YAML.load_library('.lib/emoticons.yml')
  hash = {}
  hash << library
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
