# Gestión de usuarios

## Patrón: usuario de deploy con mínimo privilegio

- Usuario: `devops-deploy`
- Grupo: `deploy-team`
- Puede: ejecutar scripts, escribir logs, leer config
- No puede: modificar config, usar sudo
