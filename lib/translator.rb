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
  emoticon_hash = load_library path

  output = nil
  emoticon_hash.each do |meanings, nested_hash|
    # p "meanings: #{meanings}"
    # p nested_hash
    nested_hash.each do |language, symbol|
      # p "language: #{language}"
      # p "symbol: #{symbol}"
      if language == :japanese
        if symbol == emoticon
          output = meanings
        end
      end
    end
  end
  if output == nil
    return "Sorry bout that, I don't know what that is."
  end
  output
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
