public class ApiCalloutExample {
  
    public static void makeApiCallout() {
        // Define the API endpoint URL
        String endpointUrl = 'https://postman-echo.com/get?foo1=bar1&foo2=bar2'; // Replace with your actual API endpoint URL

        // Create an HTTP request
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpointUrl);
        request.setMethod('GET'); // Use 'GET', 'POST', 'PUT', or 'DELETE' as needed

        // Create an HTTP client
        Http http = new Http();

        // Send the request and get the response
        HttpResponse response = http.send(request);

        // Check if the callout was successful (HTTP status code 200)
        if (response.getStatusCode() == 200) {
            // Parse and debug the response body
            String responseBody = response.getBody();
            System.debug('API Response Body: ' + responseBody);
        } else {
            // Handle errors if the callout was not successful
            System.debug('API Callout failed with HTTP status code: ' + response.getStatusCode());
            System.debug('Error Message: ' + response.getStatus());
        }
    }
}