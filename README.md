WEBOMAGICK
================================================
### Basic gem for image processing.
-------------------------------------
### Dependency:
* [Imagemagick Delegates](http://www.imagemagick.org/download/delegates/)
* [Imagemagick Library](http://www.imagemagick.org/script/install-source.php)
* [RMagick Gem](https://github.com/rmagick/rmagick)

________________________________________________________________________________

### Usage

``` ruby
require 'webomagick'
param = {"actions" => "{"thumbnail"=>50}","source_url" => "https://encrypted.google.com/images/srpr/logo11w.png","result" => "/home/deepak/test/test.png"}
Webomagick.image_process(param)
```
_____________________________________________________________________________
### Documentation

###Actions

#### thumbnail(width : int)
Resize the image according to  width

* Example
``` ruby
"actions" => {"thumbnail"=>50}
```

#### rotate(degrees : int)
rotate the image according degrees 

* Example:
``` ruby
"actions" => {"rotate"=>50}
```
#### resize_by_resolution(resolution :int)
Resize the image according to resolution

* Example

``` ruby
"actions" => {"resize_by_resolution"=>50}
```
Note: Not work for PNG and GIF images 


#### crop(x :int, y: int, width : int, height : int)
 The parameters are 
* The x- and y-offset of the rectangle relative to the upper-left corner of the image
* width, height
The width and height of the rectangle.

* Example
``` ruby
"actions" => {"crop"=>{"x" => 0, "y"=> 0, "width" => 100, "height" => 100}}
```

#### resize_by_scale(scale : float)
Resize the image according to percentage.
* The parameter 1.25 is equivalent to 125%

* Example

``` ruby
"actions" => {"resize_by_scale"=>1.25}
```