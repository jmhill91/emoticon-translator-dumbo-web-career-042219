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
  emotHash["get_emoticon"][english]=japanese
end
emotHash
end

def get_japanese_emoticon(file, emot)
  emotHash=load_library(file)
  japaneseEmot=emotHash['get_emoticon'][emoticon]
   japaneseEmot.each do |emoticon|
     if emoticon == emot
       return emoticon
     else return "Sorry that emoticon was not found"
   end
 end
end

def get_english_meaning
  # code goes here
end