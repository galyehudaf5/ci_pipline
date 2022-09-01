$uri = 'http://localhost:8080/api/Chat'

$json =  (@{
    "Content"= "my-message"
} | ConvertTo-json)

Invoke-RestMethod -Method Post -Uri $uri -Body $json -ContentType 'application/json' -Verbose

