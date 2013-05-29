module ContainPicture

  def self.included(base)
    class << base
      attr_accessor :contained_pictures
      def contains_picture(options)
        self.contained_pictures = {:thumb => nil, :large => nil, :original => nil, :default => nil}.merge(options)
      end
    end
  end

  def contained_picture(type=:original)
    t = self.class.contained_pictures[type] 
    d = self.class.contained_pictures[:default] 
    r = (t.kind_of?(Symbol))? self.send(t): t
    if(r.nil?)
      r = (d.kind_of?(Symbol))? self.send(d): d
    end
    r
  end

end
