def page_content(title)
    File.read("pages/#{title}.txt")
end

puts page_content("nick-pettit")