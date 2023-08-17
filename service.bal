import ballerina/http;

type Greeting record {|
   string to;
   string content;
|};

configurable int port = 9090;
configurable Greeting greeting = ?;

service http:Service / on new http:Listener(port) {
   resource function post greeting() returns string {
      string message = string `Hello alllll kaaaaaa${greeting.to}! ${greeting.content}`;
      return message;
   }
}
