movie_lists = [
  {
    "name" => "New Releases",
    "videos" => [
      {
        "id" => 70111470,
        "title" => "Die Hard",
        "boxarts" => [
          { "width" => 150, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/DieHard150.jpg" },
          { "width" => 200, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/DieHard200.jpg" }
        ],
        "url" => "http://api.netflix.com/catalog/titles/movies/70111470",
        "rating" => 4.0,
        "bookmark" => []
      },
      {
        "id" => 654356453,
        "title" => "Bad Boys",
        "boxarts" => [
          { "width" => 200, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/BadBoys200.jpg" },
          { "width" => 140, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/BadBoys140.jpg" }

        ],
        "url" => "http://api.netflix.com/catalog/titles/movies/70111470",
        "rating" => 5.0,
        "bookmark" => [{ "id" => 432534, "time" => 65876586 }]
      }
    ]
  },
  {
    "name" => "Thrillers",
    "videos" => [
      {
        "id" => 65432445,
        "title" => "The Chamber",
        "boxarts" => [
          { "width" => 130, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/TheChamber130.jpg" },
          { "width" => 200, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/TheChamber200.jpg" }
        ],
        "url" => "http://api.netflix.com/catalog/titles/movies/70111470",
        "rating" => 4.0,
        "bookmark" => []
      },
      {
        "id" => 675465,
        "title" => "Fracture",
        "boxarts" => [
          { "width" => 200, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/Fracture200.jpg" },
          { "width" => 120, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/Fracture120.jpg" },
          { "width" => 300, "height" => 200, "url" => "http://cdn-0.nflximg.com/images/2891/Fracture300.jpg" }
        ],
        "url" => "http://api.netflix.com/catalog/titles/movies/70111470",
        "rating" => 5.0,
        "bookmark" => [{ "id" => 432534, "time" => 65876586 }]
      }
    ]
  }
]

new_releases = movie_lists[0]
new_releases = new_releases["videos"]
boxarts = 
thrillers = movie_lists[1]
thrillers = thrillers["videos"]




def find_id (hash)
    hash.each do |k, v|
        if k == "id"
            return v
        end
    end
end

def find_title (hash)
    hash.each do |k, v|
        if k == "title"
            return v
        end
    end
end

def find_url (hash)
    hash.each do |k, v|
        if k == "url"
            return v
        end
    end
end

def simple_movie (hash)
    simple_movie = {"id" => find_id(hash), "title" => find_title(hash), "boxart" => find_boxart(hash)}
    return simple_movie
end

def find_boxart (hash)
    boxarts = hash["boxarts"]
    if hash["title"] == "Die Hard"
        return find_url(boxarts[0])
    elsif hash["title"] == "Bad Boys"
        return find_url(boxarts[1])
    elsif hash["title"] == "The Chamber"
        return find_url(boxarts[0])
    elsif hash["title"] == "Fracture"
        return find_url(boxarts[1])
    end
end





simplified_movies = [simple_movie(new_releases[0]), simple_movie(new_releases[1]), simple_movie(thrillers[0]), simple_movie(thrillers[1])]

p simplified_movies

# [
#   {"id" => 70111470, "title" => "Die Hard", "boxart" => "http://cdn-0.nflximg.com/images/2891/DieHard150.jpg"},
#   {"id" => 654356453, "title" => "Bad Boys", "boxart" => "http://cdn-0.nflximg.com/images/2891/BadBoys140.jpg"},
#   {"id" => 65432445, "title" => "The Chamber", "boxart" => "http://cdn-0.nflximg.com/images/2891/TheChamber130.jpg"},
#   {"id" => 675465, "title" => "Fracture", "boxart" => "http://cdn-0.nflximg.com/images/2891/Fracture120.jpg"}
# ]