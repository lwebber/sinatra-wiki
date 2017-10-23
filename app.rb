require 'sinatra'

#test integrated source control

def page_content(title)
    File.read("pages/#{title}.txt")
rescue Error::ENDENT
    return nil
end

get "/" do
    erb :welcome
end

get "/:title" do
    page_content(params[:title])
end