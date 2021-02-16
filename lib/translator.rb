# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  hash = {}
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meaning, emoticon|
    hash[meaning] = {:english => emoticon[0], :japanese => emoticon[1]}
  end
  hash
end

def get_japanese_emoticon(file_path, emote)
  english = ""
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meaning, emoticon|
    if emoticon[1] == emote
      english = emoicon[0]
    end
  end
  english
end

def get_english_meaning(file_path, emote)
  japanese = ""
  emoticons = YAML.load_file(file_path)
  emoticons.each do |meaning, emoticon|
    if emoticon[0] == emote
      japanese = emoicon[1]
    end
  end
  japanese
end