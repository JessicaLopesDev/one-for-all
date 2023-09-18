# One For All

## :page_with_curl: Sobre

O projeto One For All utiliza o banco de dados relacional MySQL, e para manipulá-lo construímos queries utilizando conceitos de JOIN, SELECT, COUNT, entre outros. Foi um desafio que consolidou a utilização do Docker, conceitos de SQL e a manipulação e normalização de tabelas utilizando MySQL Workbench.

## :man_technologist: Habilidades desenvolvidas

- Docker
- MySQL
- Manipulação e normalização de tabelas
- Filtragem de dados

## 🛠️ Ferramentas Utilizadas

- Docker
- MySQL

## ⚙️ Como Executar

> :warning: &nbsp; _Para executar este projeto é necessário ter o Docker e o MySQL Workbench instalados_

<details>
  <summary> Como iniciar </summary>
  <br>

1. Clone o repositório em uma pasta

```
git clone git@github.com:JessicaLopesDev/one-for-all.git
```

2. Entre na pasta raíz do projeto e instale as dependências

```
npm install
```

3. Para rodar o projeto é necessario executar o comando abaixo no diretório raiz do projeto. Isso fará com que os containers docker sejam orquestrados e o banco de dados esteja disponível

```
docker-compose up -d
```

4. Crie o banco de dados no MySQL Workbench, a partir dos comandos do arquivo <code>challenges/desafio1.sql</code>

5. As queries podem ser testadas depois que o banco de dados estiver criado, a partir dos comandos dos arquivos <code>challenges/desafio2...9.sql</code>

6. Crie uma nova tabela a partir dos comandos do arquivo <code>challenges/desafio10.sql</code> no MySQL Workbench para testar os comandos dos arquivos <code>challenges/desafio11...13.sql</code>
