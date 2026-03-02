# Script para verificar el progreso del despliegue
Write-Host "Verificando el estado del despliegue..."
aws cloudformation describe-stacks --stack-name proyecto-alta-disponibilidad --region us-east-1 --query "Stacks[0].StackStatus" --output text
$env:AWS_PAGER = ""; aws cloudformation describe-stacks --region us-east-1 --stack-name proyecto-alta-disponibilidad --query "Stacks[0].Outputs"