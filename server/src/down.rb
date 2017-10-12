
class Down

  def call(env)
    [ status, header, [ html ] ]
  end

  def status
    200
  end

  def header
    { 'Content-Type' => 'text/html' }
  end

  def html
    [
      '<div style="padding:50px; background-color:#262626; color:khaki; font-family:Impact; text-align:center">',
      '<div style="font-size:4em;">cyber-dojo is offline</div>',
      '<div style="font-size:2em;">we&lsquo;re doing a planned upgrade</div>',
      '<div style="font-size:2em;">we&lsquo;ll be back in about an hour</div>',
      table,
      '</div>'
    ].join()
  end

  def table
    names = all_avatar_names.shuffle
    html = '<table style="text-align:center; margin-left:auto; margin-right:auto;">'
	  8.times.each do |row|
  	  html += '<tr>'
	    8.times.each do |col|
	      html += '<td>'
		    n = row*4 + col
        html += img(names[n])
		    html += '</td>'
	    end
	    html += '</tr>'
	  end
    html += '</table>'
    html
  end

  def img(avatar)
    size = 43
    "<img height='#{size}' width='#{size}' src='/images/#{avatar}.jpg' />"
  end

  def all_avatar_names
    %w(alligator antelope     bat       bear
       bee       beetle       buffalo   butterfly
       cheetah   crab         deer      dolphin
       eagle     elephant     flamingo  fox
       frog      gopher       gorilla   heron
       hippo     hummingbird  hyena     jellyfish
       kangaroo  kingfisher   koala     leopard
       lion      lizard       lobster   moose
       mouse     ostrich      owl       panda
       parrot    peacock      penguin   porcupine
       puffin    rabbit       raccoon   ray
       rhino     salmon       seal      shark
       skunk     snake        spider    squid
       squirrel  starfish     swan      tiger
       toucan    tuna         turtle    vulture
       walrus    whale        wolf      zebra)
  end

end
