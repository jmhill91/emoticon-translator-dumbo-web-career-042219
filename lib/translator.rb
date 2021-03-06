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
  japaneseEmot=emotHash['get_emoticon'][emot]
   if japaneseEmot != nil 
     return japaneseEmot
   else 
     return "Sorry, that emoticon was not found"
 end
end

def get_english_meaning(file, emot)
  emotHash=load_library(file)
  englishEmot=emotHash['get_meaning'][emot]
  if englishEmot != nil 
    return englishEmot
  else 
    return "Sorry, that emoticon was not found"
  end
end