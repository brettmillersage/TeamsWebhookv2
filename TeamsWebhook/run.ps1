using namespace System.Net

# Input bindings are passed in via param block.
param (
    $Request,
    $TriggerMetadata
)

$Request

# Interact with query parameters or the body of the request.

if ($Request) {
    $status = [HttpStatusCode]::OK
    $body = $Request
}
else {
    $status = [HttpStatusCode]::BadRequest
    $body = "Payload not received from Bot Framework"
}

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name outputSbMsg -Value ([HttpResponseContext]@{
    StatusCode = $status
    Body       = $body
})
