#!/bin/bash

#param ($cn = $(throw "Nome do Container é necessário!"))

function GetContainerIP {

  container_ip = docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $cn
  Ip_check = ($container_ip -AS [IPAddress]) -as [Bool]
  if ($Ip_check -ne "TRUE")
       {echo "Erro!"}
  else
      {echo "O IP do servidor $cn é: $container_ip"}
}

GetContainerIP($cn)
