require 'pry'
require 'yaml'

def load_library(file_path)
  emots = YAML.load_file(file_path)
  final = emots.each_with_object({}) do |(key, value), final_hash|
    if !final_hash[key]
      final_hash[key] = {
        :english => value[0], 
        :japanese => value[1]
      }
    end
  end
  final
end

def get_japanese_emoticon(file_path, emoji)
  # code goes here
end

def get_english_meaning
  # code goes here
end