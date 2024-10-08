# Projeto de Demonstração com Kubernetes e GitHub Actions

Este projeto é uma aplicação React simples que demonstra a integração de um cluster Kubernetes provisionado com Terraform, uma aplicação Dockerizada, e uma pipeline de CI/CD usando GitHub Actions.

## Estrutura do Projeto

- **src/**: Código-fonte da aplicação React.
- **k8s/**: Manifestos Kubernetes para deploy da aplicação.
- **.github/workflows/**: Configurações da pipeline do GitHub Actions.
- **Dockerfile**: Arquivo para construir a imagem Docker da aplicação.

## Como Funciona

1. **Desenvolvimento**: As alterações no código da aplicação são feitas dentro do diretório `src/`.
2. **Pipeline CI/CD**: Ao fazer push para a branch `main`, o GitHub Actions:
   - Constrói a aplicação.
   - Constrói a imagem Docker e envia para o Docker Hub.
   - Aplica os manifestos Kubernetes no cluster.

3. **Deploy**: O cluster Kubernetes atualiza a aplicação com a nova imagem.

## Configuração

### Pré-requisitos

- Conta no Docker Hub.
- Cluster Kubernetes acessível.
- Segredos configurados no GitHub:
  - `DOCKERHUB_USERNAME`
  - `DOCKERHUB_PASSWORD`
  - `KUBE_CONFIG_DATA` (configuração do kubeconfig codificada em Base64).

### Executando Localmente

1. Instale as dependências:
   ```bash
   npm install
