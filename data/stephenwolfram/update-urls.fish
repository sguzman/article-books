cat all.html | pup 'div#content a[href] attr{href}' | sort --unique | while read msg
      set --local name (basename $msg)
      echo -e "$msg\n\tout=$name.html"
  end
