Dicas para o GitHub
===================

A ideia do _GitHub_ é ser um hospedeiro para os seus repositórios do _Git_, que, por sua vez, é uma ferramenta de versionamento de código, ou seja, você pode guardar todas as versões dos seus programas nele.

Alguns conceitos fundamentais do Git são o de _branch_ e _commit_.

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

Uma coisa muita boa de se fazer é já guardar o endereço do seu repositório remoto quando criá-lo:

```
git remote add <nome> <link>
```

Vamos supor que você queira guardar o link do repositório [github.com/ishiikurisu/LADL](https://github.com/ishiikurisu/LADL) na variável `origin`:

```
git remote add origin https://github.com/ishiikurisu/LADL
```

Isso será útil mais tarde, quando formos baixar e upar o código para o GitHub. Além disso, pode ser útil setar as suas informações no repositório local para poder te identificar mais rapidamente na hora de upar:

```
git config --global user.name "Joe Frank"
git config --global user.mail "joe@crisjr.eng.br"
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

Que vai carregar o trabalho do repositório remoto no seu computador. Se der algum conflito, quer dizer que está na hora de fazer um merge no código. Ou seja,

Para upar o código no repositório, primeiro faça um commit do código (que será explicado mais tarde), depois use o comando:

```
git push <origem> <branch>
```

Isto empurrará a branch atual para o repositório remoto indicado na origem no branch descrito. Por exemplo: vamos supor que você que esteja na branch master no seu repositório local. Após realizar o commit, você usaria o comando:

```
git push origin master
```

Para upar a versão atual da branch master na branch master do repositório remoto indicado em origin. O git irá pedir o nome do seu usuário no GitHub e sua senha.

Branches
--------

Um branch é uma linha de desenvolvimento do código. Podem ocorrer vários desenvolvimentos em paralelo da aplicação, sem que uma linha de trabalho interfira na outra. Para tanto, cada linha se desenvolverá em uma ramificação separada. Por padrão, a linha de desenvolvimento principal é chamada de `master`.

Para se conferir qual a branch atual:

```
git branch
```

Naturalmente, podem ser criadas outras branches, usando o comando:

```
git branch <nome>
```

Para se mudar para uma outra branch, usa-se o comando

```
git checkout <nome>
```

Não se esqueça de salvar seu trabalho na branch atual antes de mudar!

Commit
------

Quando você faz um commit, isso quer dizer que você está se responsabilizando por aquelas mudanças no código, e salva tais alterações no sistema do Git, para poder upar este código no GitHub ou até mesmo voltar para esta versão do código.

Para realizar um commit, usamos:

```
git add -A
git commit -m "Mensagem de commit"
```

Caso contrário, pode-se recusar o trabalho realizado em vez de dar commit. Para tanto:

```
git checkout <arquivo para recusar>
```

TL;DR
-----

Em suma, seu fluxo de trabalho será:

1. Carregar o trabalho salvo no repositório remoto:

```
git pull origin master
```

2. Fazer o trabalho que precisa ser feito. Após cada mudança importante no código, fazer um commit:

```
git add -A
git commit -m "Mensagem descritiva"
```

3. Após o dia de serviço, upar todas as alterações no repósitorio remoto, no Github:

```
git push origin master
```
