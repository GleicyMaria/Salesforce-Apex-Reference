# Desenvolvimento Moderno de JavaScript (JS)
[Modulo Trailhead](https://trailhead.salesforce.com/pt-BR/content/learn/modules/modern-javascript-development).

# Sumário

1. [Desenvolvimento Moderno de JavaScript (JS)](#desenvolvimento-moderno-de-javascript-js)
   - [Linha do Tempo do JavaScript](#linha-do-tempo-do-javascript)
   - [O que mudou com o ES6?](#o-que-mudou-com-o-es6)
   - [Lançamentos Contínuos](#lançamentos-contínuos)
   - [Adaptação e Compatibilidade](#adaptação-e-compatibilidade)

2. [Playground de Código](#playground-de-código)
   - [Como usar o PlayCode?](#como-usar-o-playcode)

3. [Explore a Nova Sintaxe em JavaScript ES6](#explore-a-nova-sintaxe-em-javascript-es6)
   - [Escopo de Função vs Bloco](#escopo-de-função-vs-bloco)
   - [Constantes com `const`](#constantes-com-const)
   - [Simplificando Atribuições](#simplificando-atribuições)
   - [Desestruturação](#desestruturação)
   - [Literais de Template](#literais-de-template)

4. [Entendendo Funções em JavaScript](#entendendo-funções-em-javascript)
   - [Sintaxe de Funções em Arrow](#sintaxe-de-funções-em-arrow)
   - [O Problema do `this`](#o-problema-do-this)
   - [Melhorias no Manuseio de Parâmetros](#melhorias-no-manuseio-de-parâmetros)
   - [Uso do Operador `...` (Rest e Spread)](#uso-do-operador--rest-e-spread)

5. [Trabalhando com Classes em JavaScript ES6](#trabalhando-com-classes-em-javascript-es6)
   - [Diferenças na Criação e Uso de Classes](#diferenças-na-criação-e-uso-de-classes)
   - [Membros de Classe](#membros-de-classe)
   - [Herança](#herança)

6. [Organização de Código com Módulos em JavaScript ES6](#organização-de-código-com-módulos-em-javascript-es6)
   - [Conceitos Básicos](#conceitos-básicos)
   - [Estilos de Importação](#estilos-de-importação)
   - [Características de Exportações Nomeadas](#características-de-exportações-nomeadas)

7. [JavaScript Assíncrono](#javascript-assíncrono)
   - [Pyramid of Doom](#pyramid-of-doom)
   - [Introdução a Promises](#introdução-a-promises)
   - [Funções Async/Await](#funções-asyncawait)
   - [Métodos Avançados de Promise](#métodos-avançados-de-promise)
   - [API Fetch](#api-fetch)

8. [Testando Seu JavaScript com Jasmine](#testando-seu-javascript-com-jasmine)
   - [Por Que Testar?](#por-que-testar)
   - [Desenvolvimento Guiado por Comportamento (BDD)](#desenvolvimento-guiado-por-comportamento-bdd)
   - [Estrutura Básica do Jasmine](#estrutura-básica-do-jasmine)
   - [Funções Auxiliares do Jasmine](#funções-auxiliares-do-jasmine)
   - [Exemplo: Testando Classes Parent e Child](#exemplo-testando-classes-parent-e-child)

---




## Linha do Tempo do JavaScript
- **1996:** Introdução do JavaScript.
- **1997:** Criação do padrão ECMAScript (ES) - versão 1.
- **1999-2009:** Período sem lançamentos significativos.
- **2009:** Lançamento do ECMAScript 5 (ES5) - versão mais conhecida por muitos desenvolvedores.
- **2015:** Lançamento do ECMAScript 6 (ES6) - início da era do "Desenvolvimento Moderno de JS."

## O que mudou com o ES6?
- Introduziu **classes** e **módulos**, recursos que facilitaram o desenvolvimento de aplicativos web mais complexos.
- Renovou o interesse no JavaScript, que deixou de ser visto como uma linguagem apenas para scripts simples.
- Motivou a criação de diversos **tutoriais**, **posts de blogs** e **bibliotecas open-source**.

## Lançamentos Contínuos
- A partir do ES6, novas versões do ECMAScript passaram a ser lançadas **anualmente**, com recursos cada vez mais avançados.

## Adaptação e Compatibilidade
- O **JavaScript precisa de um motor dedicado** para rodar (ex.: motores de navegadores como o V8 do Google Chrome).
- Nem todos os navegadores suportam as versões mais recentes, o que pode:
  - Retardar a adoção de novos recursos.
  - Fazer muitos desenvolvedores continuarem utilizando o **ES5 (JavaScript clássico)**.

### Soluções Temporárias
- Ferramentas como **transpiladores** (ex.: Babel) e **polyfills** ajudam a usar novos recursos em navegadores antigos, mas adicionam complexidade e podem afetar o desempenho.

### Otimismo Atual
- Muitos navegadores modernos, como o Google Chrome, agora suportam grande parte dos recursos do ES6 diretamente, sem necessidade de transpiladores.

## Como verificar compatibilidade?
- Acesse a [tabela de compatibilidade do ECMAScript](https://compat-table.github.io/compat-table/es6/).
- Veja quais recursos são suportados pelos navegadores.
- **Exemplo:** No Google Chrome atualizado, 98% dos recursos do ES6 estão disponíveis.

---

## Playground de Código
O **PlayCode** é uma ferramenta online para testar código JavaScript facilmente.

### Como usar o PlayCode?
1. Acesse: [playcode.io](https://playcode.io).
2. Clique em **Open Editor**.
3. Escolha o template **Empty JavaScript**.
4. Insira o código no painel `script.js`:

   ```javascript
   var message = 'Hello World';
   console.log(message);  // Mostra "Hello World" no console
   ```
5. O resultado aparecerá no painel Console.

# Explore a Nova Sintaxe em JavaScript ES6

## Escopo de Função vs Bloco
Antes do ES6, a única maneira de declarar variáveis ou funções era utilizando `var`. Agora temos opções melhores.

- **Escopo de Função:** Variáveis declaradas com `var` existem apenas dentro da função em que foram definidas ou na função pai mais próxima.
- **Escopo Global:** Variáveis declaradas fora de uma função com `var` tornam-se globais.

### Exemplo 1: Escopo de Função
```javascript
var myVar = 1;
function myFunc() {
  var myVar = 2;
  console.log(myVar); // Saída: 2
}
myFunc();
console.log(myVar); // Saída: 1
```

### Exemplo 2: Escopo de Bloco (com `var`)
```javascript
var myVar = 1;
if (true) {
  var myVar = 2;
  console.log(myVar); // Saída: 2
}
console.log(myVar); // Saída: 2
```

> O problema: `var` não respeita o escopo de bloco (dentro das chaves `{}`). Isso pode causar comportamentos inesperados.

### **Solução com `let`**
O ES6 introduziu a palavra-chave `let`, que respeita o escopo de bloco.

## Benefícios de Usar `let`
- **Escopo de Bloco:** Variáveis declaradas com `let` existem apenas dentro do bloco em que foram definidas.
- **Sem Içamento:** Diferentemente de `var`, `let` não é içada, o que evita comportamentos inesperados.

> **Nota:** Içamento ocorre quando o interpretador move declarações para o topo do código durante a execução, antes das atribuições.

---

## Constantes com `const`
O ES6 também trouxe a palavra-chave `const` para definir constantes.

### Características do `const`:
- Variáveis declaradas com `const` **não podem ser redeclaradas ou reatribuídas**.
- Também respeitam o **escopo de bloco**.
- **Devem ser inicializadas no momento da declaração.**

### Exemplo: Propriedades Mutáveis
Embora o valor de uma constante não possa ser reatribuído, suas propriedades podem ser modificadas:
```javascript
const BRANDCOLOR = {
  primary: "blue",
  accent: "teal"
};
BRANDCOLOR.accent = "gray"; // Isso é permitido
console.log(BRANDCOLOR); // { primary: "blue", accent: "gray" }
```

> Use `const` para valores que não mudarão. Ao lidar com objetos ou arrays, apenas o objeto em si é protegido, mas suas propriedades podem ser alteradas.

---

## Simplificando Atribuições
### Inicialização Abreviada de Objetos
No ES6, você pode inicializar objetos de forma mais curta quando os nomes das propriedades e variáveis são iguais:

**Antes do ES6:**
```javascript
let firstName = 'John', lastName = 'Doe';
let user = {
  firstName: firstName,
  lastName: lastName
};
console.log(user);
```

**Com ES6:**
```javascript
let firstName = 'John', lastName = 'Doe';
let user = { firstName, lastName };
console.log(user);
```

---

## Desestruturação
A desestruturação simplifica a extração de dados de arrays ou objetos.

### Exemplo: Desestruturação de Array
**Sem desestruturação:**
```javascript
let numbers = [1, 2, 3, 4];
let one = numbers[0];
let two = numbers[1];
console.log(one, two); // Saída: 1, 2
```

**Com desestruturação:**
```javascript
let numbers = [1, 2, 3, 4];
let [one, two] = numbers;
console.log(one, two); // Saída: 1, 2
```

- Você pode ignorar valores usando vírgulas como marcadores de posição:
```javascript
let [ , , three] = numbers;
console.log(three); // Saída: 3
```

### Exemplo: Desestruturação de Objeto
```javascript
const APPLE = {
  type: 'red delicious',
  color: 'red',
  size: 'large'
};
const { type, color } = APPLE;
console.log(color); // Saída: red
```

---

## Literais de Template
Literals de template facilitam a criação de strings dinâmicas com variáveis e expressões.

### Exemplo: Mensagem com Variável
```javascript
let user = 'John';
console.log(`Olá, ${user}! Bem-vindo ao JavaScript ES6.`);
```

### Benefícios dos Literais de Template:
- Incorporar aspas simples e duplas sem usar caracteres de escape.
- Criar mensagens em várias linhas:
```javascript
let message = `
Olá, ${user}!
Seja bem-vindo.
`;
console.log(message);
```

# Entendendo Funções em JavaScript

## Sintaxe de Funções em Arrow
No ES6, foi introduzida uma forma mais curta de definir funções usando **arrow functions** (funções de seta). Elas simplificam o código ao eliminar a necessidade de usar as palavras-chave `function` e `return`.

### Exemplo:
Antes do ES6:
```javascript
let result = function (i, j) {
  return i + j;
};
console.log(result(2, 3)); // Saída: 5
```

Com ES6:
```javascript
let result = (i, j) => i + j;
console.log(result(2, 3)); // Saída: 5
```

### Observações:
- Parênteses são opcionais se houver apenas um parâmetro.
- Chaves são necessárias apenas para múltiplas expressões; nesse caso, `return` é obrigatório.

### Quando usar a palavra-chave `return`:
- Em **funções de seta**, o `return` é necessário quando as chaves `{}` são usadas para delimitar o corpo da função.
- Sem as chaves, a expressão é retornada automaticamente.

**Exemplo:**
Com retorno implícito:
```javascript
let multiply = (a, b) => a * b;
console.log(multiply(2, 3)); // Saída: 6
```

Com retorno explícito:
```javascript
let multiply = (a, b) => {
  return a * b;
};
console.log(multiply(2, 3)); // Saída: 6
```

---

## O Problema do `this`
O `this` é uma variável especial em JavaScript que refere-se ao objeto que invocou a função. No entanto, seu comportamento dinâmico pode causar confusão, especialmente com funções aninhadas.

### Exemplo de Problema com `this`:
```javascript
let message = {
  hello: 'Hello',
  names: ['Sue', 'Joe'],
  showMessage: function() {
    this.names.forEach(function(name) {
      console.log(this.hello + ' ' + name);
    });
  }
};
message.showMessage();
```
**Saída esperada:** 
- "Hello Sue"
- "Hello Joe"

**Saída real:** 
- "undefined Sue"
- "undefined Joe"

O problema ocorre porque o `this` dentro da função aninhada refere-se ao escopo global, onde `hello` não está definido.

### Soluções:
#### Usando uma Variável Intermediária:
```javascript
let message = {
  hello: 'Hello',
  names: ['Sue', 'Joe'],
  showMessage: function() {
    let self = this;
    this.names.forEach(function(name) {
      console.log(self.hello + ' ' + name);
    });
  }
};
message.showMessage(); // Saída correta
```

#### Usando Arrow Functions:
As arrow functions resolvem automaticamente esse problema ao usar o escopo léxico do `this`:
```javascript
let message = {
  hello: 'Hello',
  names: ['Sue', 'Joe'],
  showMessage: function() {
    this.names.forEach(name => {
      console.log(this.hello + ' ' + name);
    });
  }
};
message.showMessage(); // Saída correta
```

---

## Melhorias no Manuseio de Parâmetros
No ES6, você pode definir valores padrão diretamente na lista de parâmetros de uma função.

### Antes do ES6:
```javascript
function helloMessage(param1, param2) {
  param2 = param2 || 'World';
  return param1 + ' ' + param2;
}
console.log(helloMessage('Hello')); // Saída: "Hello World"
```

### Com ES6:
```javascript
function helloMessage(param1, param2 = 'World') {
  return param1 + ' ' + param2;
}
console.log(helloMessage('Hello')); // Saída: "Hello World"
```

---

## Uso do Operador `...` (Rest e Spread)
O ES6 introduziu o operador de três pontos (`...`), que pode ser usado tanto como **rest** quanto como **spread**.

### Rest: Captura Argumentos Restantes
O operador `rest` junta argumentos restantes em um array.
```javascript
function showContact(firstName, lastName, ...titles) {
  console.log(`${firstName} ${lastName}, ${titles[0]} and ${titles[1]}`);
}
showContact('Sue', 'Johnson', 'Developer', 'Architect');
// Saída: "Sue Johnson, Developer and Architect"
```

#### Explicação do Operador Rest:
O operador `rest` permite que uma função aceite zero ou mais argumentos adicionais. Ele os agrupa em um array, facilitando o acesso e manipulação.

**Exemplo:**
```javascript
function myFunction(firstParam, ...restParams) {
  console.log(firstParam); // Exibe o primeiro argumento
  console.log(restParams); // Exibe os argumentos restantes como um array
}
myFunction('Primeiro', 'Segundo', 'Terceiro', 'Quarto');
// Saída:
// "Primeiro"
// ["Segundo", "Terceiro", "Quarto"]
```
- **Vantagens:**
  1. Trabalha com um número variável de argumentos.
  2. Substitui a variável `arguments`, que é menos flexível.

### Spread: Expande Arrays ou Objetos
O operador `spread` expande elementos de arrays ou objetos em argumentos separados.
```javascript
let array1 = ['one', 'two'];
let array2 = ['three', 'four'];
let combined = [...array1, ...array2];
console.log(...combined); // Saída: "one two three four"
```

> **Nota:** O mesmo operador é usado, mas o contexto define sua função.


# Trabalhando com Classes em JavaScript ES6

## Diferenças na Criação e Uso de Classes
Antes do ES6, classes eram simuladas usando protótipos e funções construtoras. Com o ES6, foi introduzida a palavra-chave `class`, que simplifica a criação e uso de classes.

### Antes do ES6 (com protótipos):
```javascript
function Animal(name) {
  this.name = name;
}

Animal.prototype.printName = function() {
  console.log(this.name);
};

let duck = new Animal('duck');
duck.printName(); // Exibe: "duck"
```

### Com ES6:
```javascript
class Animal {
  constructor(name) {
    this.name = name;
  }

  printName() {
    console.log(this.name);
  }
}

let duck = new Animal('duck');
duck.printName(); // Exibe: "duck"
```

- **Classes ainda são baseadas em funções prototípicas**.
- O uso da palavra-chave `new` agora é obrigatório.
- Classes não podem ser acessadas antes de sua definição (não são içadas como funções).

---

## Membros de Classe
As classes podem conter diferentes tipos de membros:

### Construtor
Executado automaticamente ao criar uma nova instância da classe.
```javascript
constructor(name) {
  this.name = name;
}
```

### Métodos Estáticos
Podem ser chamados diretamente na classe, sem criar uma instância.
```javascript
static staticMethod() {
  return 'This is a static method';
}
console.log(Animal.staticMethod()); // Exibe: "This is a static method"
```

### Métodos de Protótipo
Podem ser acessados apenas por instâncias da classe.
```javascript
printName() {
  console.log(this.name);
}
```

### Getters e Setters
Funções de acesso para obter ou definir valores.
```javascript
get area() {
  return this.height * this.width;
}

set area(value) {
  this.height = value / this.width;
}
```

---

## Herança
As classes ES6 suportam herança com a palavra-chave `extends`.

### Classe Base:
```javascript
class Parent {
  constructor(name) {
    this.name = name;
  }

  getName() {
    return this.name;
  }
}
```

### Classe Derivada:
```javascript
class Child extends Parent {
  constructor(name) {
    super(name); // Chama o construtor da classe base
  }

  getMessage() {
    return 'Hello ' + super.getName(); // Chama o método da classe base
  }
}

let someone = new Child('person');
console.log(someone.getMessage()); // Exibe: "Hello person"
```

- **`extends`**: Define que uma classe é derivada de outra.
- **`super`**: Permite acessar o construtor e os métodos da classe base.

---

## Observações Adicionais
- Classes não permitem o uso de vírgulas para separar métodos.
- Podem ser definidas usando expressões:
```javascript
const myAnimal = class Animal {
  constructor(name) {
    this.name = name;
  }

  printName() {
    console.log(this.name);
  }
};
let duck = new myAnimal('duck');
duck.printName(); // Exibe: "duck"
```
# Organização de Código com Módulos em JavaScript ES6

## Visão Geral
Módulos permitem dividir o código em partes lógicas, tornando-o mais legível e fácil de manter. Antes do ES6, criar módulos no JavaScript era complicado, exigindo o uso de padrões como AMD, UMD ou CommonJS (Node.js). Com o ES6, foi introduzido um sistema nativo de módulos que agora é amplamente suportado por navegadores modernos.

---

## Conceitos Básicos
- **Módulos ES6**: Arquivos contendo JavaScript onde tudo é isolado ao escopo do módulo.
- **Exportações**: Permitem disponibilizar variáveis, funções ou classes para outros módulos.
- **Importações**: Especificam o que será utilizado de um módulo exportado.

### Exemplo Básico:
#### Arquivo `module1.js`:
```javascript
export function printMsg(message) {
  const div = document.createElement('div');
  div.textContent = message;
  document.body.appendChild(div);
}
```

#### Arquivo `module2.js`:
```javascript
export let msg1 = 'Hello World! ';
export let msg2 = 'This message was loaded from a module.';
```

#### Arquivo `script.js`:
```javascript
import { printMsg } from './module1.js';
import { msg1, msg2 } from './module2.js';
printMsg(msg1 + msg2);
```

#### No HTML:
```html
<script type="module" src="./src/script.js"></script>
```

O navegador exibe: "Hello World! This message was loaded from a module."

---

## Estilos de Importação
1. **Importação com nomes originais:**
   ```javascript
   import { msg1, msg2 } from './module2.js';
   printMsg(msg1 + msg2);
   ```

2. **Importação com alias:**
   ```javascript
   import { msg1 as alias1, msg2 } from './module2.js';
   printMsg(alias1 + msg2);
   ```
   - `msg1` agora só pode ser referenciado como `alias1`.

3. **Importação de todos os elementos como um objeto:**
   ```javascript
   import * as message from './module2.js';
   printMsg(message.msg1 + message.msg2);
   ```
   - Todos os exportados são acessados como propriedades do objeto `message`.

---

## Características de Exportações Nomeadas
- Apenas os nomes de variáveis, funções ou classes são exportados.
- Valores exportados são **somente leitura** fora do módulo de origem.

### Exemplo de Exportação Somente Leitura:
#### Código:
```javascript
import { msg1, msg2 } from './module2.js';
msg1 = 'Can this change?'; // Erro
```
- Tentar reatribuir `msg1` fora de `module2.js` gera um erro.

---

## Outras Observações
- Módulos sempre executam em **modo estrito** (`strict mode`).
- Cada módulo é executado apenas uma vez, quando carregado.
- Declarações `import` são içadas, garantindo que as dependências sejam executadas no momento do carregamento do módulo.

# JavaScript Assíncrono


## Pyramid of Doom
O "pyramid of doom" ocorre quando funções assíncronas com callbacks ficam profundamente aninhadas, criando um código de leitura difícil e propenso a erros.

### Exemplo com Callback:
```javascript
function doSomething(msg, callback) {
  setTimeout(() => {
    console.log(msg);
    callback();
  }, 1000);
}

doSomething("1st call", () => {
  doSomething("2nd call", () => {
    doSomething("3rd call", () => {});
  });
});
```

---

## Introdução a Promises
O ES6 introduziu o objeto **Promise** para lidar com operações assíncronas de forma mais limpa e legível.

### Exemplo de Promise:
```javascript
function doSomething(msg) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      console.log(msg);
      resolve();
    }, 1000);
  });
}

doSomething("1st Call")
  .then(() => doSomething("2nd Call"))
  .then(() => doSomething("3rd Call"))
  .catch(err => console.error(err.message));
```
- **`resolve()`**: Indica que a promise foi concluída com sucesso.
- **`reject()`**: Indica que ocorreu um erro.
- **`.then()`**: Encadeia operações.
- **`.catch()`**: Captura erros de toda a cadeia de promises.

---

## Funções Async/Await
Introduzidas no ES2016+, as funções **async/await** oferecem uma maneira mais simples de trabalhar com promises, permitindo que o código pareça síncrono.

### Exemplo com Async/Await:
```javascript
async function doSomethingManyTimes() {
  try {
    await doSomething("1st Call");
    await doSomething("2nd Call");
    await doSomething("3rd Call");
  } catch (e) {
    console.error(e.message);
  }
}

doSomethingManyTimes();
```
- **`async`**: Define que uma função retorna uma promise.
- **`await`**: Pausa a execução até que a promise seja resolvida.

---

## Métodos Avançados de Promise
- **`Promise.all(iterable)`**: Aguarda que todas as promises sejam resolvidas ou qualquer uma seja rejeitada.
- **`Promise.race(iterable)`**: Retorna a promise que resolver ou rejeitar primeiro.
- **`Promise.resolve(value)`**: Cria uma promise resolvida com o valor fornecido.
- **`Promise.reject(reason)`**: Cria uma promise rejeitada com o motivo fornecido.

---

## API Fetch
A **Fetch API** simplifica requisições HTTP e retorna uma promise nativa.

### Exemplo:
```javascript
fetch('https://api.example.com/data')
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(error => console.error('Error:', error));
```

A Fetch API é perfeita para trabalhar com promises no ES6 e posterior.


# Testando Seu JavaScript com Jasmine

## Por Que Testar?
Embora os testes não sejam obrigatórios em JavaScript, eles ajudam a:
- Prevenir bugs antes que eles sejam liberados.
- Economizar tempo corrigindo e validando erros.
- Melhorar a manutenção do código no longo prazo.



## Desenvolvimento Guiado por Comportamento (BDD)
- **BDD**: Baseia-se em testes que descrevem o comportamento esperado do código, não apenas sua implementação.
- Os testes são escritos em uma linguagem próxima ao natural e incluem afirmações que verificam se o código está funcionando corretamente.



## Estrutura Básica do Jasmine
- **`describe`**: Define um conjunto de testes (test suite).
- **`it`**: Define um caso de teste específico.
- **`expect`**: Define a afirmação que deve ser validada.

### Exemplo Básico:
```javascript
describe("Test Suite Exemplo", function() {
  it("Teste Positivo", function() {
    expect(true).toBe(true);
  });

  it("Teste Negativo", function() {
    expect(false).not.toBe(true);
  });
});
```

---

## Funções Auxiliares do Jasmine
- **`beforeEach` e `afterEach`**: Executados antes e depois de cada caso de teste.
- **`beforeAll` e `afterAll`**: Executados uma vez antes ou depois de todos os casos de teste no bloco `describe`.

---

## Exemplo: Testando Classes Parent e Child

### Classes a Serem Testadas:
#### Parent.js:
```javascript
class Parent {
  constructor(name) {
    this.name = name;
  }

  getName() {
    return this.name;
  }
}
```

#### Child.js:
```javascript
class Child extends Parent {
  constructor(name) {
    super(name);
  }

  getMessage() {
    return 'Hello ' + super.getName();
  }
}
```

### Suite de Testes Jasmine:
#### JasmineTest.js:
```javascript
describe("Teste de Classes Parent e Child", function() {
  it("Teste de Mensagem", function() {
    let someone = new Child('person');
    expect(someone.getMessage()).toEqual("Hello person");
  });
});
```

### Arquivo HTML para Executar os Testes:
#### index.html:
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="shortcut icon" type="image/png" href="lib/jasmine-3.2.1/jasmine_favicon.png">
    <link rel="stylesheet" href="lib/jasmine-3.2.1/jasmine.css">
    <script src="lib/jasmine-3.2.1/jasmine.js"></script>
    <script src="lib/jasmine-3.2.1/jasmine-html.js"></script>
    <script src="lib/jasmine-3.2.1/boot.js"></script>

    <script src="Parent.js"></script>
    <script src="Child.js"></script>
    <script src="JasmineTest.js"></script>
</head>
<body>
    <h1> Jasmine Parent Child Testing Demo </h1>
</body>
</html>
```

---

## Conclusão
Carregando o arquivo `index.html` no navegador, o Jasmine executa os testes e exibe os resultados. Isso fornece um ponto de partida simples para criar seus próprios testes JavaScript orientados por comportamento.








