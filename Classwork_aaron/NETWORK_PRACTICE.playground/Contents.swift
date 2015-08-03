import Foundation

let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
//lets you know you aare setting things, dont change it just needed

let session = NSURLSession(configuration: configuration)

let googleString = "http://www.google.com"
let googleUrl = NSURL(string: googleString)
let googleRequest = NSURLRequest(URL: googleUrl!)

session.dataTaskWithRequest(googleRequest, completionHandler: { (data, response, error) -> Void in
    
    var error = NSError?
    let json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: &error)
    
    if let error = error {
        println(error.code)
    }
})




