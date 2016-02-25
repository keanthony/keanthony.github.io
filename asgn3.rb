
    f = File.new('blog.html', 'a')
    f.write("<html><head><title>Assignment 3</title><link rel='stylesheet' type='text/css' href='/css/css.css'><link href='https://fonts.googleapis.com/css?family=Amatic+SC:400,700' rel='stylesheet' type='text/css'><link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'></head><body>")
    loop = true
    while loop do
      puts "Please enter a title for your post: "
      h1 = gets.chomp
      puts "Please enter the text of your blog post: "
      p = gets.chomp
      puts "Please enter the URL of an image to go with your post: "
      img = gets.chomp
      f.write("<h1>#{h1}</h1><p>#{p}</p><img src='#{img}'>")
      puts "Would you like to create another post? Type 'no' to exit"
      again = gets.chomp
      if again == "no"
        loop = false
      end
    end
    f.write("</body></html>")
