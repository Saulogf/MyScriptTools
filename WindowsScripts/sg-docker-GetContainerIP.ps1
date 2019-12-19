param ($cn = $(throw "Nome do Container é necessário!"))

function GetContainerIP {
$error.clear()
$container_ip = docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $cn
$Ip_check = ($container_ip -AS [IPAddress]) -as [Bool]
if ($Ip_check -ne "TRUE")
    {Write-Host "Erro!"}
else
    {Write-Host "O IP do servidor $cn é: $container_ip"}
}

GetContainerIP($cn)

