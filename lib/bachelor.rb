require 'pry'




def get_season_data(data, season)
	season_data = []
	data.each do |var_season, var_season_data|
		if var_season == season
			season_data = var_season_data
		end
	end
	season_data
end


def get_winner_data(data, season)
	winner = []
	(get_season_data(data, season)).each do |contestant|
			if contestant["status"] == "Winner"
			winner = contestant
			end
	end
	winner
end


#test methods

def get_first_name_of_season_winner(data, season)
  # code here
  winner_data = get_winner_data(data, season)
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

def get_matching_contestants(data, key, value)
	
	matching_contestants = []
	
	data.each do |season, s_contestants|
		
		s_contestants.each do |contestant|

			binding.pry
		
			if contestant[key] == value
		
				binding.pry
		
				matching_contestants << contestant
		
				binding.pry
			end
		end
	end
	return matching_contestants
	binding.pry
end

binding.pry
	

def get_occupation(data, hometown)
	occupation = []
	data.each do |season, contestants|
		
		contestants.each do |contestant|
			
			if contestant["hometown"] == hometown
				binding.pry
				occupation << contestant["occupation"]
				binding.pry
			end
		end
		return occupation.pop	
	end
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end


