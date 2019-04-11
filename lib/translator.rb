require "yaml"


def load_library(file)
emoticons=YAML.load_file('./lib/emoticons.yml')
emotHash={}
emotHash['get_meaning']={}
emotHash['get_emoticon']={}
emoticons.each do |meaning, emoticon|
  english=emoticon[0]
  japanese=emoticon[1]
  emotHash['get_meaning'][japanese]=meaning
  emotHash["get_emoticon"][english]=
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end