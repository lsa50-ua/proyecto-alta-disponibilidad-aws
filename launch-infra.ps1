# Script para lanzar el despliegue de la infraestructura
Write-Host "Lanzando despliegue de Infraestructura..."
aws cloudformation deploy `
  --template-file infraestructura.yaml `
  --stack-name proyecto-alta-disponibilidad `
  --region us-east-1 `
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND `
  --parameter-overrides AdminEmail="luis.simon@alumni.immune.institute"