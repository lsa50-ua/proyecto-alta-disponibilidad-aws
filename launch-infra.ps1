# 1. Esperar a que el borrado termine (por si acaso)
Write-Host "Limpiando rastros anteriores..."
aws cloudformation wait stack-delete-complete --stack-name proyecto-alta-disponibilidad --region us-east-1

# 2. Lanzar el despliegue limpio
Write-Host "Lanzando despliegue de Infraestructura Privada..."
aws cloudformation deploy `
  --template-file infraestructura.yaml `
  --stack-name proyecto-alta-disponibilidad `
  --region us-east-1 `
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND `
  --parameter-overrides AdminEmail="luis.simon@alumni.immune.institute"