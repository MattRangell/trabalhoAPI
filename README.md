# trabalhoAPI
This repository contains the code developed for my API testing task for my QA class in college

# Projeto de Testes com Karate DSL

Este projeto contém cenários de teste para a API https://gorest.co.in/ usando a ferramenta Karate DSL. São fornecidos 9 cenários de teste, sendo 3 casos negativos.

## Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas em seu sistema:

- Java JDK (versão 8 ou superior)
- Maven (versão 3 ou superior)
- Git

## Executando o projeto

1. Clone este repositório em sua máquina local:

```shell
git clone https://github.com/seu-usuario/testes-karate-dsl.git
```

2. Acesse o diretório raiz do projeto:

```shell
cd testes-karate-dsl
```

3. Execute os testes usando o Maven:

```shell
mvn test
```

Após a execução, você verá o relatório de testes no console.

## Cenários de Teste

Aqui estão as descrições dos cenários de teste fornecidos:

### Casos Positivos

1. Criar um novo usuário
2. Obter informações de um usuário existente
3. Atualizar as informações de um usuário existente
4. Deletar um usuário existente

### Casos Negativos

1. Criar um novo usuário sem fornecer os campos obrigatórios
2. Obter informações de um usuário inexistente
3. Atualizar as informações de um usuário inexistente

## Obtendo o Relatório de Testes

O relatório de testes pode ser obtido da seguinte maneira:

1. Após a execução dos testes usando o comando `mvn test`, é criado um diretório chamado `target` no diretório raiz do projeto.

2. Acessando o diretório `target`, você encontrará o relatório em HTML na pasta `surefire-reports`. O arquivo é chamado `index.html`.

3. Abra o arquivo `index.html` em um navegador para visualizar o relatório de testes.

## Conclusão

Este projeto contém 9 cenários de teste para a API https://gorest.co.in/ usando Karate DSL. Os cenários cobrem casos positivos e negativos, permitindo validar as principais funcionalidades da API. O relatório de testes pode ser gerado e visualizado para obter uma visão geral dos resultados dos testes.
