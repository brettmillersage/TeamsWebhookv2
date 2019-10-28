using namespace System.Net

# Input bindings are passed in via param block.
param (
    $Request,
    $TriggerMetadata
)

$output = $Request

$output

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name outputSbMsg -Value $output