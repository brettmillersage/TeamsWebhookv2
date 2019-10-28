using namespace System.Net

# Input bindings are passed in via param block.
param (
    $Request,
    $TriggerMetadata
)

$output = $Request | ConvertFrom-Json

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name outputSbMsg -Value $output