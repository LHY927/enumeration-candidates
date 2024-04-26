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
  end
  
  # More methods will go below