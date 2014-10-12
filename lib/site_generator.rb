
class SiteGenerator 

  def initialize(posts_array)
    @posts_array = posts_array
  end
  def make_page!
    puts "Creating new blog.html..."
    template_doc= File.open("lib/templates/blog.html.erb", "r")

    template = ERB.new(template_doc.read)
    
    File.open("../public_html/blog.html", "w") do |f|
        f.write(
          template.result(binding) # result is an ERB method. bidning means we're passing all local variables to the template. 
        )
      f.close
    end

    puts "☢☢☢ Publishing was (probably) successful! ☢☢☢"

    # `open _site/ruby_file.rb` 
  end

end