# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

  def find(id)
    # Your code Here
    candidates.each do |candidate|
      return candidate if candidate[:id] == target_id
    end
    nil # Return nil if no candidate with the given id is found
  end
  
  def experienced?(candidate)
    # Your code Here
    if candidate.years_of_experience >= 2
      return true
    else
      return false
    end
  end
  
  def qualified_candidates(candidates)
    # Your code Here
    candidates.select do |candidate|
      # Check if the candidate is experienced (we need a definition for "experienced" here; for now, assume it means non-zero years of experience)
      experienced = candidate[:years_of_experience] > 0
      
      # Check if the candidate has 100 or more Github points
      has_github_points = candidate[:github_points] >= 100
      
      # Check if the candidate knows Ruby or Python
      knows_ruby_or_python = candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
      
      # Check if the candidate applied in the last 15 days
      # Assuming `candidate[:date_applied]` is the number of days ago the application was submitted
      recently_applied = candidate[:date_applied] <= 15
      
      # Check if the candidate is over the age of 17 (18+)
      is_adult = candidate[:age] >= 18
      
      # Combine all conditions
      experienced && has_github_points && knows_ruby_or_python && recently_applied && is_adult
    end
  end

  def ordered_by_qualifications(candidates)
    candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
  end
  
  # More methods will go below