# Sigla-Curso-grupo-(n° de grupo)

## Objetivos
El objetivo principal de este repositorio es implementar un pipeline automatizado mediante GitHub Actions, integrando herramientas de calidad, seguridad y prácticas modernas de infraestructura como código (IaC) para gestionar recursos en AWS de manera eficiente y escalable.

## Propósito General
Este proyecto demuestra el uso de Terraform para desplegar una infraestructura básica en AWS, validada por herramientas de análisis estático (TFLint), escaneo de seguridad (Checkov) y cumplimiento de políticas (OPA).

## Infraestructura Terraform
La infraestructura definida incluye:
- **VPC**: Bloque CIDR 10.1.0.0/16.
- **Subred**: Máscara /24.
- **Security Group**: Permite acceso SSH únicamente.
- **Instancia EC2**: Tipo `t2.micro`.

## Instrucciones de Uso
1. Clonar el repositorio.
2. Inicializar Terraform: `terraform init`.
3. Validar el código: `terraform validate`.
4. Planificar cambios: `terraform plan`.
5. Aplicar cambios: `terraform apply`.

## CI/CD
El pipeline de GitHub Actions se activa en cada Pull Request a la rama `main` y ejecuta:
1. Análisis estático con **TFLint**.
2. Análisis de seguridad con **Checkov**.
3. Validación con **Terraform Validate**.
4. Evaluación de políticas con **OPA**.
