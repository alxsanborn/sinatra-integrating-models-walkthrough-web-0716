require_relative 'config/environment'
require_relative 'models/textanalyzer.rb'

class App < Sinatra::Base

get '/' do
  erb :index
end

post '/' do
  @analyzed_text = TextAnalyzer.new(params[:user_text])
  @word_count = @analyzed_text.count_of_words.to_s
  @vowel_count = @analyzed_text.count_of_vowels.to_s
  @consonant_count = @analyzed_text.count_of_consonants.to_s
  @most_common_ltr = @analyzed_text.most_used_letter[0].to_s
  @common_ltr_num = @analyzed_test.most_used_letter[1].to_s
  erb :results
end


end
