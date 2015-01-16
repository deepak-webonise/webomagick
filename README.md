WEBOMAGICK
================================================
Webomagick is a gem used for image processing. Webomagick uses Imagemagick and RMagick wrapper for  for manipulating images. Webomagick provides basic functionalities related to images:
* Thumbnail
* Resolution
* Crop
* Rotate
* Scale

### Dependency:
* Install following delegates from below link:
 (http://www.imagemagick.org/download/delegates/jpegsr9a.zip)
 (http://www.imagemagick.org/download/delegates/libpng-1.6.16.tar.gz)
* Download Imagemagick Library:[Imagemagick Library](http://www.imagemagick.org/script/install-source.php)
* RMagick Gem: [RMagick Gem](https://github.com/rmagick/rmagick)

________________________________________________________________________________
### Installation:
```shell
(sudo)gem install webomagick
```
___________________________________
### Supported formats:
------------
|Extensions|
------------
|.png      |
|.jpg/jpeg |
|.gif      |
___________________________________
### Usage:
Require the gem

``` ruby
require 'webomagick'
```
____________________________________________________________________________
Following are the actions user can perform on image:

#### thumbnail(width : int)
Resize the image according to width.

* Example
``` ruby
"actions" => {"thumbnail"=>50}
```

#### rotate(degrees : int)
rotate the image according degrees.

* Example:
``` ruby
"actions" => {"rotate"=>50}
```
#### resize_by_resolution(resolution :int)
Resize the image according to resolution.

* Example

``` ruby
"actions" => {"resize_by_resolution"=>50}
```
Note:resize_by_resolution not works for png and gif images.

#### crop(x :int, y: int, width : int, height : int)
 The parameters are 
* The x-offset and y-offset of the rectangle relative to the upper-left corner of the image.
* width, height:
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
* Example for manipulating an image.
____________________________________________________________________________
```ruby
param = {"actions" => "{"thumbnail"=>50}","source_url" => "https://encrypted.google.com/images/srpr/logo11w.png","result" => "/home/deepak/test/test.png"}
Webomagick.image_process(param)
```
image_process method takes param as argument.
* "param" : contains hash of actions for manipulating images. 
* "source_url" : contains url from which images should be taken for processing.
* "result" : provides the location for storing manipulated image.