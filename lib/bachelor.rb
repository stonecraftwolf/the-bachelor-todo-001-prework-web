require 'pry'




#def get_season_data(season)
#	season_data = []
#	data.each do |var_season, var_season_data|
#		if var_season == season
#			season_data = var_season_data
#		end
#	end
#	season_data
#end


#def get_winner_data(season)
#	winner = []
#	(get_season_data(data, season)).each do |contestant|
#			if contestant["status"] == "Winner"
#			winner = contestant
#			end
#	end
#	winner
#end


#REDO EVERYTHING WITHOUT THE ABOVE HELPER METHODS

#test methods

def get_first_name_of_season_winner(data, season)

	season_data = []
	data.each do |var_season, var_season_data|
		if var_season == season
			season_data = var_season_data
		end
	end
	season_data

	winner_data = {}
	season_data.each do |contestant|
			if contestant["status"] == "Winner"
			winner_data = contestant
			end
	end
	winner_data

  # code here
  
  winner_name = winner_data["name"]

  return winner_name.split.first
end

def get_contestant_name(data, occupation)
	contestant_name = []
	data.each do |season, contestants|
		contestants.each do |contestant|
			if contestant["occupation"] == occupation
				contestant_name = contestant["name"]
			end
		end
	end
	return contestant_name
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here

  #review counters...go down through every season to every contestant, and if they are from hometown add one to counter
  count = 0
  data.each do |season, contestants|
  	contestants.each do |contestant|
  		if contestant["hometown"] == hometown
  			count = count+1
  		end
  	end
  end
  return count
end


#make a helper method that grabs all the contestants that match a certain condition, puts them in an array of hashes?
#or maybe i should do it by season? grab all matching contestants for a season?

#so the keys are strings, but in pry only symbols work to get the values...not sure if that explains why this helper method doesn't work...
	

def get_occupation(data, hometown)
	
	occupations = []

	data.each do |season, contestants|

		contestants.each do |contestant|
			
			if contestant["hometown"] == hometown
				
				occupations << contestant["occupation"]
				
			end
		end
		
	end
  
	return occupations.shift	
  # code here
end


def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  num_contestants = 0

  data.each do |season_num, s_contestants|
  	if season_num == season
  		s_contestants.each do |contestant|
  			age_total = age_total + contestant["age"].to_i
  			num_contestants = num_contestants + 1
  		end
  	end
  end
  avg_age = age_total / num_contestants
  return avg_age

end

#[26, 28, 25, 23, 23, 26, 24, 26, 27, 26, 24, 24, 26, 23, 28, 29, 23, 23, 26, 23, 27, 32, 33, 22, 27]



