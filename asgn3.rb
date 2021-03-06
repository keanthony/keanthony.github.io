
    f = File.new('blog.html', 'a')
    f.write("<!DOCTYPE html>
<html>

<head>
  <title>kevinanthony</title>
  <link rel='stylesheet' type='text/css' href='/css/css.css'>
  <link href='https://fonts.googleapis.com/css?family=Amatic+SC:400,700' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
</head>

<body>
   <div class='navbar'>
    <div class='nav'>
      <ul class='navlinks'>
        <li><img src='/assets/logo-01.png' alt='Logo' style='width:150px;height:35px;'></a>
        </li>
        <li><a href='index.html' />Home</a>
        </li>
        <li><a href='resume.html' />Resume</a>
        </li>
        <li><a href='projects.html' />Projects</a>
        </li>
        <li><a href='hobbies.html' />Hobbies</a>
        </li>
        <li><a href='blog.html' />Blog</a>
        </li>
     <li>
      <a href='https://github.com/keanthony'><img class='align-right' src='/assets/github-512px.svg' alt='Git' style='width:25px;height:25px;'></a>
      </li>
      <li>
      <a href='http://www.linkedin.com/in/kevinanthony1'><img class='align-right' src='/assets/llogo.svg' alt='LinkedIn' style='width:25px;height:25px;'></a>
     </li>
     </ul>
    </div>
  </div>")
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
