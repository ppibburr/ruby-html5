![My image](http://i1263.photobucket.com/albums/ii631/ppibburr/base_zpsa1065627.png)

ruby-html5
==========
A Framework for Desktop Ruby HTML5 applications
Brings HTML5  ala WebKit to Ruby, ties in various libraries and provides some syntactic sugar

*  [ruby_ffi-javascriptcore](https://github.com/ppibburr/ruby_ffi-javascriptcore)
*  [gir_ffi-webkit](https://github.com/ppibburr/gir_ffi-webkit)
*  [ffi-webkit-js](https://github.com/ppibburr/ffi-webkit-js)
*  [ffi-webkit-dom](https://github.com/ppibburr/ffi-webkit-dom)
*  [gir_ffi-sugar](https://github.com/ppibburr/GirFFISugar)

EXAMPLE
===
```ruby
require 'rubygems'
require 'html5'

class MyApp < RubyJS::App; 
  def button_clicked this
    shells[0].views[0].alert this
  end
end

#calls tween from XUI.js
def loop_bounce collection
  collection.tween(:left=>'200px',:backgroundColor=>"#F80303",:top=>"200px",:duration=>750) do
    collection.tween(:backgroundColor=>"#cecece",:top=>"0px",:duration=>750) do
      collection.tween(:left=>'0px',:backgroundColor=>"#F80303",:top=>"200px",:duration=>750) do
        collection.tween(:backgroundColor=>"#FFF",:top=>"0px",:duration=>750) do
          loop_bounce(collection)
        end
      end
    end
  end
end

MyApp.run do 
  shell.resize 400,400
  
  # pre render html modification
  # at a larger scale, would see performance gains
  # versus all in 'on_ready()'  
  view.html.body.replace do
    div(:class=>'button',:id=>'b1') do
      on :click, :button_clicked,'this'
      text "Click me"
    end
  end

  on_ready() do
    loop_bounce b1!
  end
end
```
