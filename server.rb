require 'sinatra'

get '/' do
  <<-DOC
    <p>FOO1: #{ENV['FOO1']}</p>
    <p>FOO2: #{ENV['FOO2']}</p>
  DOC
end