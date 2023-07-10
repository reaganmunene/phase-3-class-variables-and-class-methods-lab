  class Song
    attr_accessor :name, :genre, :artist
    #class variables incoming...
    @@count = 0
    @@genres = []
    @@artists = []


    def initialize(name, artist, genre) #when initializing a method how  do we input all those arguements?
      @@count += 1
      @name = name
      @artist = artist
      @genre = genre
      @@genres << genre
      @@artists << artist

    end

    # class method incoming
    def self.count
      @@count
    end

    def self.genres #controled for duplicates with uniq
      @@genres.uniq
    end

    def self.artists
      @@artists.uniq
    end


    #genre count method
    def self.genre_count
      genre_count = {}

      @@genres.each do |genre|
        if genre_count[genre]
          genre_count[genre] += 1
        else
          genre_count[genre] = 1
        end
      end
  genre_count
    end
  end

                                        #testing the program

#     irb(main):048:0> ninety_nine_problems = Song.new("ninetyNineProblems","jayz","Rap")
#     =>#<Song:0x0000559180df16c0
#     irb(main):049:0> puts ninety_nine_problems.artist
#      jayz
#      => nil
#      irb(main):050:0> puts ninety_nine_problems.genre
#      Rap
#      => nil
#      irb(main):051:0> hello = Song.new("hello","beyonce","pop")
#      =>#<Song:0x0000559181893d80
#      irb(main):052:0> puts Song.count
#        2
#        => nil
#      irb(main):053:0> exit
