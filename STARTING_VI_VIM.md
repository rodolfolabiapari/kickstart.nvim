# Starting

## TODOs

mapas, quickfixes, plugins do nvim, `g:`

- `:% y` faz o mesmo que `ggVGy` e `ggyG`
- `:q` é diferente de `q:` (exit vs command-line window)
  - entender melhor a funcao do command-line window
- Ver o site
- no modo inserção o `CTRL-r` abre registradores
- no vim `vimtutor` e no nvim `:Tutor`
- calculadora dentro do vim:
  - `:=2+2` te mostra o resultado
  - no insert mode `CTRL-r`, `= 2+2` retorna para o texto
- `:windo diffthis` faz diff entre arquivos abertos
  - É a mesma coisa que ir em cada janela e fazer `:diffthis`
  - `[c` e `]c` pula diferenças
  - `do` e `dp` pu e obtain sempre da janela atual
  - `:windo diffoff`
- `:verbose set fo?` mostra quem alterou por último  o fo



## Usando o `:help`

Se tiver no *neovim/nvim* utilize o `:Tutor`.

Leia o `:help`.
Leia o manual inicial `:help usr_01.txt`
Leia o `:help text-objects`.

Use `K` para  buscar no manual a palavra do cursor

Use a vontade o `:helpgrep word`.

Use `Ctrl+]` e `Ctrl+O` para avançar e retroceder no manual.

Sobre atalhos e mapas veja `:map`

## Introdução

Execute `:!column -t -s '|' -o '|'` para formatar tables.

Formato `(number)(command)(text object)`, sendo *number* opcional, *command* é
ação e *text object* é movimento.

Além de abrir na linha 50 com `vi +50 filename`, é possível abrir com `vi
+/PADRAO filename`.

## *vi*, *vim* e *neovim* Configurations

### Buffers e registradores

Os registradores devem preceder o commando, exemplo `"dyy`, `"dP`.

### Modificação

| Cmd   | Sub       | Informação
| ----- | ---       | ----------
| `s`   |           | faz uma pesquisa de movimento inteligente
| `S`   |           | Faz pesquisa em bloco retroativo
| `U`   |           | Restaura a linha inteira
| `X`   |           | Deleta um char atrás do cursor
| `cc`  |           | Altera linha inteira. Igual a `c$`.
| `~`   |           | Troca o case no cursor
| `C`   |           | Altera do cursor até o final da linha
| `x`   |           | Delete 1 char sem salvar no registrador
| `ddp` |           | Inverte posição de linhas
| `J`   |           | Junta a linha atual com a próxima
| `d`   | `/PADRAO` | deleta do cursor até o PADRAO, nao incluso
| `d`   | `f` x     | Deleta até encontrar x
| `g`   | muita coisa       | Faz inúmeros movimentos, pesquisar sobre
| `g`   | `q`       | quebra linhas na coluna 80 ou 120
| `g`   | `qap`       | faz `gq` around paragraph
| `g`   | `~w`       | Switch case em `w`
| `g`   | `uw`, `Uw` | lower uppercase em `w`
| `g`   | `p`, `P` | cola mas deixa o cursor no final da colagem
| `g`   | `v` | Repeta a última selecao no modo visual
| `g` | `i` | Vai para o último local de insercao feito
| `<`, `>` | | faz shift de texto. Verificar o tamanho com o `shiftwidth`
| `<`, `>` | `}` | faz shift parágrafo
| `<`, `>` | `%` | faz shift do bloco correspondente

### Movimentacao de Cursor e Screen

#### Texto

| Cmd       | Sub      | Informação
| -----     | ---      | ----------
| `E`       |          | Ignora Pontuacao até achar espaco
| `e`       |          | Fim da *word*
| `g`       | `e`      | Fim da *word* para trás
| `(` `)`   |          | Move entre sentenças (`?.!` seguidos de espaço)
| `{` `}`   |          | Move entre parágrafos
| `[[` `]]` |          | Move entre seções
| `*`, `#` | |  Pesquisa a palavara que está no cursor
| `%` | |  Pesquisa parênteses, chave ou colchete respectivo

#### Linhas e outros

| Cmd       | Sub               | Informação                                            
| -----     | ---               | ----------                                            
| `^`       |                   | Primeiro char nao espaco da linha                     
| `+`, `-`  |                   | Primeiro char nao espaco da próxima e linha anterior  
| ` num \|` |                   | Coluna num da linha
| `f`       | x                 | Move o cursor até o char `x`
| `t`       | x                 | Move o cursor até antes do char `x`
| `F`       | x                 | Move o cursor até o char `x` para trás                
| `^E`, `^Y`  |                   | Mostra uma linha da screen para cima e baixo
| `^U`, `^D`  |                   | Move meia screen
| `^F`, `^B`  |                   | Move screen inteira
| `z`       | `ENTER`           | Move a linha atual para cima                          
| `z`       | `.`               | Move a linha atual para o centro                      
| `z`       | `-`               | Move a linha atual para baixo                         
| `g`       | muita coisa       | Faz inúmeros movimentos, pesquisar sobre              
| `H`       |                   | Move para Topo da screen                              
| `M`       |                   | Move para Meio da screen                              
| `L`       |                   | Move para Baixo da screen                             

### Marcações

| Cmd            | Sub               | Informação                                            
| -----          | ---               | ----------                                            
| `'`            |                   | Semelhante ao de registradores `"`, mas para marcações
| `:marks`       |                   | Semelhante ao de registradores `"`, mas para marcações
| `m`            | x                 | Marca sua posicao atual no texto com a letra x        
| \`             | x                 | Vai para o char na marcação x                         
| `'`            | x                 | Vai para o início da linha na marcação x              
| `''`           |                   | Retorna para início da linha da última posicao marcada
| \`\`           |                   | Retorna para o char da última posição marcada         
| `'`            | `"`               | Move para a última posição editada
| `'`            | `.`               | Move para a última posição editada no início da linha
| `'`            | `.`               | Move para a última posição editada no char exato
| `'`            | `0`               | Move para a última posição da última vez que abriu o vim

### Folders

| Cmd         | Sub         | Informação
| -----       | ---         | ----------
| `z`         | `A`         | Toggle recursivamente
| `z`         | `C`         | Fecha recursivamente
| `z`         | `O`         | Abre recursivamente
| `z`         | `D`         | Deleta recursivamente
| `z`         | `E`         | Elimina todas
| `z`         | `f`         | Cria um foder até o f
| `count z`   | `F`         | Cria folder com n linhas
| `z`         | `a`         | toggle 1 folder
| `z`         | `c`         | close 1 folder
| `z`         | `o`         | open 1 folder
| `z`         | `j k`       |  move o cursor para os folders

Exemplos interessantes:

- `3zf` executa o `zF` sobre 3 linhas iniciando da corrente;
- `2zfj` executa o `zf` da linha atual até 2 linhas para baixo `j`
- `zf%` para fechar um bloco


## `ex` s2

O padrão é `:[address]command[options]`

`ex` é um executor de LINHAS! Recomenda-se `:set number`.

> Para ver todas as configurações definidas diferentes do padrão, execute
> `:set`.

Se quiser ver o histórico, dentro do *command line* aperte `Ctrl+F`.

Para ver mensagens :messages

| Cmd   | Informação
| ---   | ----------
| `:set` | Ver alteracoes
| `:set all` | Ver todas as opcoes
| `:set x?` | ver valor de x
| `:set x` | Se boleado ativa  a funcao 
| `:set no x` | Se boleado desativa  a funcao 
| `:set x=value` | Aplica value
| `:e!` | volta o arquivo original

Valores absolutos

| Cmd            | Informação
| ---            | ----------
| `:10` | Move para a linha 10
| `:160:224m23`  | Move de 160 a linha 224 para linha 23. Números absolutos.
| `:160:224co23` | Copia de 160 a linha 224 para linha 23. Números absolutos.

### Line address symbols, valores relativos e marcacoes

| Cmd        | Informação
| ---        | ----------
| `:.,$d`    | Deleta da linha atual até o fim do arquivo
| `:.,.+20d` | Deleta a linha atual +20
| `:%d`      | Deleta o conteúdo do arquivo

 Se eu tiver na linha 1 então `:100,+5 p` nao faz sentido.

| Cmd          | Informação
| ---          | ----------
| `:226,$m.-2` | Move da 266 até o final para 2 linhas acima do cursor
| `:20,.m$`    | Move da linha 20 até atual para o fim do arquivo.

| Cmd      | Informação
| ---      | ----------
| `:%t$`   | Duplica todo o conteúdo no final do arquivo
| `:-,+t0` | copia 3, ao redor do cursor, linhas e coloca no início do arquivo

Se eu tiver na linha 1 então `:100,+5 p` nao faz sentido. Para isso, usar o `;`
como em `:100;+5 p` para calcular o segundo com base no primeiro.

### Pesquisas

Pesquisas sempre devem ter o `/`, `/padrao/` no início e no fim.

| Cmd                     | Informação
| ---                     | ----------
| `*` | Pesquisa a palavara que está no cursor
| `:/PADRAO/`            | Pesquisa a linha do proximo padrao
| `:?PADRAO?`            | Pesquisa a linha do anterior padrao
| `:/PADRAO/d`            | Deleta a linha do proximo padrao
| `:/PADRAO/+d`           | Deleta a linha abaixo ao padrao
| `:/padrao1/,/padrao2/d` | deleta do padrao1 ao 2
| `:.,/padrao/m23`        | pega a linha atual até o padrao e move para depois da 23
| `:/padrao/;+10 p`       | pega a linha com padrao, soma mais 10 e imprime num buffer

> Atenção! `d/padrao` deleta do cursor até o padrao, deixando todo o resto. Já
> o comando `ex` `:./padrao/d` deleta a linha inteira!

| Cmd                 | Informação
| ---                 | ----------
| `:g/padrao`         | pequisa e exibe todas as linhas com o padrao
| `:g!/padrao`        | Exibe todas as linhas que nao possui o padrao
| `:60,125g/padrao/p` | seleciona a linha 60 a 125 e pesquisa o padrao e exibe

### Substituições

| Cmd                            | Informação
| ---                            | ----------
| `:s/antigo/novo/`              | s a primeira ocorrencia na linha atual.
| `:s/antigo/novo/g`             | s a todas as ocorrencias na linha atual.
| `:50,100 s/antigo/novo/g`      | num intervalo de linhas faz as subs
| `:1,$ s/antigo/novo/g`         | substitui todas as ocorrencias do arquivo
| `:% s/antigo/novo/g`           | semelhante acima
| `:% s/antigo/novo/gc`          | semelhante acima com confirmacao
| `:g/padrao1/ s/antigo/novo/gc` | em todas as linhas que tem padrao1, faz a substituicao com confirmacao
| `:g/padrao1/ s//novo/gc`       | semelhante acima
| `:% s/padrao1/&, padrao2/`     | O `&` repete a pesquisa na substituicao, evitando reescrita

### Salvando e saindo

| Cmd                     | Informação
| ---                     | ----------
| `:230,$ w filename`     | salva em outro arquivo de 230 até o final
| `:.-21,.+10 w filename` | salva em outro arquivo um pedaco relativo de texto
| `:10,20 w >> file` | Append no file


## Buffers e windows

`:ls` ou `SPACE SPACE` com plugin no #lazy.

| Cmd                     | Informação
| ---                     | ----------
| `:new`     | 
| `:new file`     | com nome
| `:sp`     | horizontal
| `:vsp`     | vertical
| `:clo`     | Fecha
| `:res num`     |  rezise window
| `:qa`     | fecha todos buffers


## Undos

`:help usr_32.txt`

## Sessions

`:mksession mySession.vim` e `:source mySession.vim`

## Playground

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi accumsan lectus
eget mi rhoncus ultrices in ac orci. In non est pulvinar, interdum ipsum eget,
laoreet velit. Nam sit amet luctus massa, ut rutrum nisl. Morbi molestie
malesuada malesuada. Aenean lacinia nunc nec erat venenatis, a rhoncus sem
pharetra. Phasellus nec massa ex. Proin ut porta augue. Vestibulum sit amet
quam consectetur, elementum urna eget, pellentesque justo. Morbi lorem nibh,
consequat ac eros ut, tempor ultricies massa. Pellentesque in aliquam enim.
Nunc augue risus, tristique et luctus vel, porttitor in orci. Suspendisse eu
quam non justo aliquam cursus id luctus augue. Duis non viverra ex.

Aliquam elit ante, posuere id consequat vestibulum, mollis sit amet lorem.
Quisque sem justo, rhoncus eget molestie ut, consectetur non lacus. Donec
laoreet pharetra auctor. Fusce a eros dignissim, gravida diam at, malesuada
risus. Vivamus quis magna eros. Morbi cursus sollicitudin tellus, sit amet
suscipit felis elementum eu. Nulla sagittis, eros ut interdum accumsan, lectus
nisi bibendum augue, at ornare mauris lorem vel nibh. Sed ultrices id enim at
viverra. Sed sit amet ullamcorper risus.

Nam fermentum sed augue ac malesuada. Suspendisse at mollis sem, et tristique
justo. Donec ut aliquet urna. Quisque mattis mauris at elementum pharetra. Nam
non quam ipsum. Etiam egestas cursus est, sed lacinia metus egestas at. Ut eget
posuere est, ac facilisis lacus. Duis et rhoncus ex, ut tristique neque. Morbi
facilisis, turpis ut consectetur vulputate, metus lorem cursus elit, eu
pellentesque dolor lacus vel sem. Donec ante risus, posuere vitae mi lobortis,
volutpat dictum nunc.

Nunc elit ipsum, mattis non nulla eu, aliquam tempus lacus. Donec facilisis
maximus lectus a suscipit. Pellentesque facilisis lacus nunc. Interdum et
malesuada fames ac ante ipsum primis in faucibus. Cras eu est eget magna
commodo semper tincidunt eget nisi. Pellentesque sagittis euismod neque. Fusce
placerat id eros id molestie.

Nullam vestibulum rutrum facilisis. Nam eu volutpat turpis. Ut rhoncus, ante at
molestie fringilla, metus ante pulvinar tortor, in pellentesque neque nibh sed
nisl. Integer vehicula eros nunc, et facilisis orci vestibulum et. Nunc nec
malesuada tellus. Vestibulum facilisis feugiat placerat. Quisque et tincidunt
ligula. Integer eleifend purus eget ligula ultrices, ut tincidunt turpis
fringilla. Suspendisse eros quam, commodo a mollis id, ornare quis libero.
Mauris ante nisi, dignissim eu nisi a, porta gravida purus. Proin sit amet
velit ut nisl pulvinar posuere.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere
cubilia curae; Curabitur at dapibus turpis. Ut luctus lobortis lacinia. Mauris
ultrices sem nec arcu fermentum, vitae fermentum purus convallis. Cras mollis
posuere augue, eget dignissim mi facilisis sit amet. Proin vitae efficitur
nulla. Duis erat erat, elementum a suscipit et, hendrerit non orci. Nulla in
lectus nec risus ornare auctor.

Sed ultrices purus a augue venenatis, vel vulputate libero dapibus. Suspendisse
potenti. Nullam fermentum venenatis scelerisque. Sed cursus odio feugiat,
dictum diam quis, sodales erat. Ut sapien sem, lobortis in lacinia eget,
feugiat nec lacus. Quisque et ornare ligula, vel fermentum enim. Donec iaculis
dui ipsum, ac bibendum mauris ultricies eget.

Aenean tincidunt blandit odio, consequat posuere lectus sollicitudin eget. In
et ante eu libero convallis eleifend. Nam ut leo ut elit varius auctor non in
nibh. Vestibulum blandit augue eu velit finibus congue. Sed ac aliquam orci.
Nam cursus lacinia volutpat. Vestibulum et pretium dui. Duis ut laoreet tortor,
at pellentesque ipsum. Nulla non condimentum neque, vitae scelerisque dolor.

Quisque quis bibendum felis. Etiam feugiat velit augue, et aliquam leo mollis eget. Vivamus ullamcorper sit amet urna id cursus. Curabitur suscipit leo vitae turpis imperdiet, vel dapibus est aliquet. Curabitur dictum quam in neque sodales, id auctor ex pulvinar. Suspendisse porta arcu enim, eu pharetra eros venenatis sed. Proin dignissim eros non odio sollicitudin tempor. Quisque blandit sollicitudin libero id consectetur. Vestibulum ut tempus tortor, a placerat neque. In varius ante ac risus maximus mattis. In fringilla nunc mauris, eget facilisis purus egestas ut. Nulla ut pellentesque justo. Proin ex libero, consequat ut diam ut, dignissim tempus purus.

Maecenas felis elit, auctor vitae bibendum id, sollicitudin ac neque. Sed id orci molestie, elementum felis ac, tristique erat. Cras facilisis pulvinar laoreet. In id aliquet ligula. Proin maximus a urna nec laoreet. Donec lacinia neque feugiat, euismod odio nec, pellentesque orci. Etiam diam lacus, gravida et tellus non, pulvinar imperdiet est. Nam id molestie magna, sit amet elementum elit. Mauris hendrerit enim nunc, in congue lacus volutpat in. Integer vel mollis mauris, id dignissim massa. Integer congue fringilla orci.

Mauris aliquam lacus congue mollis tempor. Nullam eu convallis augue. Cras sed euismod neque. Ut bibendum, mauris nec interdum accumsan, eros leo volutpat enim, nec fermentum nulla massa at risus. Proin tempor suscipit augue. Quisque cursus, leo eget pellentesque mattis, ligula risus sollicitudin purus, id condimentum erat quam nec orci. Praesent a lacus a eros mollis sodales at sit amet massa. Suspendisse potenti. Aenean velit felis, bibendum eget orci in, tristique interdum odio. Maecenas condimentum odio risus, hendrerit consequat eros fermentum ut. Donec vel orci at massa ultricies finibus in quis mauris. Mauris dui quam, blandit iaculis lacus sed, maximus accumsan nunc. Quisque tempor justo non augue convallis, non accumsan orci tristique.

Fusce quis metus ut tortor rutrum porttitor non nec justo. Vivamus quis iaculis neque. Vestibulum sed diam velit. Maecenas facilisis pretium sapien sed sollicitudin. Aliquam enim nisl, maximus eget vehicula vel, iaculis in orci. Suspendisse et libero sit amet purus cursus molestie sed ac ex. Praesent sit amet scelerisque ipsum.

In vitae vulputate libero, sed eleifend dolor. Etiam tristique rutrum magna. Quisque id purus non nisi efficitur volutpat. Aenean luctus nec est in faucibus. Vivamus ultricies dolor quis massa finibus, a mattis ante accumsan. Sed aliquam vel nisl vitae lacinia. Maecenas laoreet sem quis metus dictum cursus. Maecenas nec mi sit amet lectus pulvinar mollis eget pharetra eros. Sed hendrerit dui et velit suscipit scelerisque. Aenean vitae gravida nisi. Mauris dictum sit amet massa elementum pellentesque.

Sed lorem sem, vehicula gravida ipsum sed, sodales porttitor lectus. Sed eu posuere mauris. Mauris scelerisque sagittis augue, interdum ultricies nisi euismod consectetur. Nunc aliquet ullamcorper lectus, eu molestie mi dignissim faucibus. Integer placerat sed nisi quis sagittis. Vivamus sit amet consequat tortor. Fusce eget pulvinar arcu, sollicitudin efficitur nunc. Proin lorem mauris, gravida vel velit quis, aliquam iaculis turpis. Fusce dictum pulvinar sapien, et lobortis magna commodo eu. In vestibulum nunc eget mattis facilisis. Suspendisse diam nunc, venenatis et molestie id, lobortis eu arcu. In venenatis quam quis enim molestie varius ut ac purus. Etiam finibus pellentesque molestie. Aliquam aliquet, sapien a pulvinar feugiat, velit tortor elementum urna, et varius orci nulla in purus.

Etiam at elit magna. Integer vitae nulla mauris. Cras auctor est eu eros porta dignissim. Aliquam at mi orci. Nullam ultrices hendrerit diam, posuere molestie mauris blandit vel. Praesent vulputate efficitur vehicula. Maecenas feugiat ut quam eget fringilla. Sed at tincidunt ex.

