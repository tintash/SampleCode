1.upto(10) { |i|
    User.seed do |user|
    	user.id = i
      user.email = "sample#{i}@domain.com"
      user.name = "Sample #{i}"
    end
  }
