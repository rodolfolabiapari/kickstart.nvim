# Starting

Execute `:!column -t -s '|' -o '|'` para formatar tables.

Formato `(number)(command)(text object)`, sendo *number* opcional, *command* é
ação e *text object* é movimento.

Além de abrir na linha x com `vi +50 filename`, é possível abrir com `vi
+/PADRAO filename`.

## Buffers e registradores

Os registradores devem preceder o commando, exemplo `"dyy`, `"dP`.

## Modificação

| Cmd   | Sub       | Informação
| ----- | ---       | ----------
| `s`   | ``        | faz uma pesquisa de movimento inteligente
| `S`   | ``        | Faz pesquisa em bloco
| `cc`  | ``        | Altera linha inteira. Igual a `c$`.
| `~`   | ``        | Troca o case no cursor
| `C`   | ``        | Altera do cursor até o final da linha
| `x`   | ``        | Delete 1 char sem salvar no registrador
| `ddp` | ``        | Inverte posição de linhas
| `J`   | ``        | Junta a linha atual com a próxima
| `d`   | `/PADRAO` | deleta do cursor até o PADRAO, nao incluso
| `d`   | `f` x     | Deleta até encontrar x
| `g`   | `q` | quebra linhas na coluna 80

## Movimentacao de Cursor e Screen

| Cmd      | Sub      | Informação
| -----    | ---      | ----------
| `E`      | ``       | Ignora Pontuacao até achar espaco
| `(` `)`  | ``       | Move entre sentenças (`?.!` seguidos de espaço)
| `{` `}`  | ``       | Move entre parágrafos
| `[[` `]]`| ``       | Move entre seções
| `F`      | x        | Move o cursor até o char `x` para trás
| `^E`     | ``       | Move a screen para cima
| `^Y`     | ``       | Move a screen para baixo
| `z`      | `ENTER`  | Move a linha atual para cima
| `z`      | `.`      | Move a linha atual para o centro
| `z`      | `-`      | Move a linha atual para baixo
| `m`      | x       | Marca sua posicao atual no texto com a letra x
| `'`      | x       | Vai para o início da linha na marcação x
| `\``     | x       | Vai para o char na marcação x
| `''`     |         | Retorna para início da linha da última posicao marcada
| \`\`     |         | Retorna para o char da última posição marcada
| ``       | ``       | 
| ``       | ``       | 

## `ex` s2

Recomenda-se `:set number`.

`:160:224m23` | Move de 160 a linha 224 para linha 23. Números absolutos.
`:160:224co23` | Copia de 160 a linha 224 para linha 23. Números absolutos.
`:.,$d` | Deleta da linha atual até o fim do arquivo
`:20,.m$` | Move da linha 20 até atual para o fim do arquivo.
`:%d` | Deleta o conteúdo do arquivo

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

