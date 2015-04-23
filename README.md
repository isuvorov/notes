mynote
======

Заметки по программированию и администрированию

#### HTML CDN links
```html
<link rel="stylesheet" type="text/css" href="http://yastatic.net/bootstrap/3.3.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css"> 

<script type="text/javascript" src="http://yastatic.net/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="http://yastatic.net/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://yastatic.net/underscore/1.6.0/underscore-min.js"></script>
 ```

#### JADE sample template
```jade
html
    head
        link(rel='stylesheet', type='text/css', href='http://yastatic.net/bootstrap/3.3.1/css/bootstrap.min.css')
        link(rel='stylesheet', type='text/css', href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css')
        //header critycal css + js
        block layout-head
    body
        //body html
        block layout-body
            h1 layout-body
        //header css + js, js counters
        script(type='text/javascript', src='http://yastatic.net/jquery/2.1.3/jquery.min.js')
        script(type='text/javascript', src='http://yastatic.net/bootstrap/3.3.1/js/bootstrap.min.js')
        script(type='text/javascript', src='http://yastatic.net/underscore/1.6.0/underscore-min.js')
        block layout-footer
```

####Apache2 конфигурация
динамические поддомены 4го уровня *.office.mgbeta.conf в директории /var/www
https://github.com/isuvorov/mynote/blob/master/office.mgbeta.conf
