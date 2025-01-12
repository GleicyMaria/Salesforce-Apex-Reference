# O que é o Iterable em Apex e como usá-lo?

## Introdução

O padrão `Iterable` é uma interface do Apex que permite criar coleções de objetos que podem ser percorridas ("iteradas") em um loop `for`. Isso é útil quando você deseja criar suas próprias coleções personalizadas ou fornecer uma forma organizada e flexível de acessar elementos de uma lista ou conjunto.

No Salesforce, o `Iterable` facilita a manipulação de coleções e ajuda a manter o código mais limpo e legível.

## Por que usar o Iterable?

| Vantagem      | Descrição                                                                                    |
| ------------- | -------------------------------------------------------------------------------------------- |
| Organização   | Encapsula a lógica para manipulação de dados dentro de uma classe.                           |
| Flexibilidade | Permite criar suas próprias estruturas de dados que podem ser percorridas com um loop `for`. |
| Reutilização  | O mesmo objeto pode ser iterado em diferentes partes do código, reduzindo a repetição.       |
| Clareza       | Torna o código mais intuitivo, abstraindo a lógica complexa da iteração.                     |

## Como funciona o Iterable?

O `Iterable` depende de duas interfaces principais:

1. **`Iterable`**: Define como os elementos serão disponibilizados para iteração. Possui um método obrigatório:

   - `iterator()`: Retorna um objeto do tipo `Iterator`.

2. **`Iterator`**: Gerencia o processo de percorrer cada elemento da coleção. Possui métodos principais como:

   - `hasNext()`: Verifica se há mais elementos para iterar.
   - `next()`: Retorna o próximo elemento na sequência.

### Requisitos para implementar o `Iterable`

1. Criar uma classe que implemente `Iterable`.
2. Definir um método `iterator()` que retorne um objeto `Iterator` para a coleção.

## Exemplo Simples

### Classe que Implementa Iterable

O código completo está disponível no arquivo [`MyIterable.cls`](./MyIterable.cls).

### Classe de Teste

O código completo está disponível no arquivo [`MyIterableTest.cls`](./MyIterableTest.cls).

### Resultado

Nos logs de depuração, você verá:

```
DEBUG | Hello
DEBUG | World
```

## Casos de Uso Reais

### 1. Filtrar Dados

Imagine que você precise iterar apenas por registros específicos de uma lista. Usando o `Iterable`, você pode encapsular a lógica de filtro em uma classe:

O código completo está disponível no arquivo [`FilteredIterable.cls`](./FilteredIterable.cls).

### 2. Paginar Resultados

Se você estiver lidando com grandes conjuntos de dados, pode usar o `Iterable` para iterar apenas uma página de cada vez:

O código completo está disponível no arquivo [`PaginatedIterable.cls`](./PaginatedIterable.cls).

## Dicas para Uso

1. **Manter Simples**: Use o `Iterable` para simplificar a lógica de iteração, não para complicar.
2. **Testar Sempre**: Crie testes unitários para garantir que sua implementação esteja funcionando conforme o esperado.
3. **Documentar**: Adicione comentários ao código para explicar a lógica do `Iterable` e do `Iterator`.
4. **Reutilização**: Considere criar classes genéricas reutilizáveis, como `PaginatedIterable`.

## Conclusão

O `Iterable` é uma ferramenta poderosa no Apex para criar coleções personalizadas que podem ser percorridas facilmente em um loop `for`. Ele ajuda a organizar seu código, encapsular lógica e melhorar a legibilidade, sendo especialmente útil em casos de uso como filtrar dados ou paginar resultados.

Para mais informações, consulte a [documentação oficial do Salesforce](https://help.salesforce.com/s/articleView?id=release-notes.rn_apex_iterator_foreach.htm&release=246&type=5).

