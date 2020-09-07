# DetectImageType


detect image type from image data


example

```swift
let namesArray = ["dogdog_png.png",
    "dogdog_jpg.jpg",
    "dogdog_bmp.bmp",
    "dogdog_webp.webp",
    "smell.gif", ]
    
for name in namesArray {
    if let data = dataWithName(name) {
    let type = Data.detectImageType(with: data)
    print("image name = \(name), type = \(type)")
    }
}    
```
