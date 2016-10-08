Dicas para o GitHub
===================

A ideia do _GitHub_ é ser um hospedeiro para os seus repositórios do _Git_, que, por sua vez, é uma ferramenta de versionamento de código, ou seja, você pode guardar todas as versões dos seus programas nele.

Alguns conceitos fundamentais do Git são o de _branch_, _remote_ e _commit_.

Para inicializar um repositório em uma pasta digite o comando:

```
git init
```

Para carregar o repositório de uma referência externa, use comando:

```
git clone <origem>
```

Por exemplo, suponha que há um repositório no link [github.com/ishiikurisu/LADL](https://github.com/ishiikurisu/LADL). Você pode copiar este repositório para a pasta `LADL` usando o comando:

```
git clone https://github.com/ishiikurisu/LADL.git
```

GitHub
------

Quando entrar no seu repositório para trabalhar, a primeira coisa a fazer é checar se alguém fez alguma mudança nele. Para isso, devemos carregar o código existente usando o comando

```
git pull <origem> <branch>
```

Em geral, este comando se resume a:


```
git pull origin master
```

Que vai carregar o trabalho do repositório remoto no seu computador.

<!-- TODO Continuar falando sobre GitHub. Upar código. Merging = dar merda  -->

Branches
--------

Um branch é uma linha de desenvolvimento do código. Podem ocorrer vários desenvolvimentos em paralelo da aplicação, sem que uma linha de trabalho interfira na outra. Para tanto, cada linha se desenvolverá em uma ramificação separada.

<!-- TODO Falar sobre como criar um branch, e mudar de branch. Como fazer merging  -->

<!-- TODO Falar sobre os tópicos restantes  -->
