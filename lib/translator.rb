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

def get_english_meaning path, emoticon
  emoticons = YAML.load_file(path)
  load_library path
end

def get_japanese_emoticon
  # code goes here
end

# it "calls on #load_library and gives it the argument of the file path" do
#   emoticon_hash = load_library("./lib/emoticons.yml")
#
#   file_path = "./lib/emoticons.yml"
#   expect(self).to receive(:load_library).with(file_path).and_return(emoticon_hash)
#   answer = get_english_meaning("./lib/emoticons.yml", "=D")
