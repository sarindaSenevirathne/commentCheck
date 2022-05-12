import ballerina/log;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {

            //comment added in online editor
            log:printInfo("name is empty");
            return error("name should not be empty!");
        }

        //this is the comment added through the local machine
        return "Hello, " + name;
    }
}
