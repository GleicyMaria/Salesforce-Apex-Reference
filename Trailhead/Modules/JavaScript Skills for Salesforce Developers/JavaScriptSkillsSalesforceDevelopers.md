# Conceitos Fundamentais do JavaScript

## Objetivos de Aprendizagem
- Compreender o ambiente de runtime do JavaScript.
- Diferenciar entre o motor do JavaScript e a linguagem em si.
- Evitar armadilhas comuns ao aprender JavaScript.
- Conhecer boas práticas essenciais.



## Introdução ao JavaScript
O JavaScript evoluiu de uma linguagem limitada a uma ferramenta poderosa para aplicações web modernas. Ele está padronizado pelo **ECMAScript** e amplamente suportado pelos principais navegadores. Modernas aplicações em JavaScript utilizam frameworks como o **Lightning Component Framework** da Salesforce.



## Ambiente de Runtime do JavaScript
- **Motor JavaScript**: Interpreta e executa códigos JavaScript. Exemplo: V8 (Google Chrome).
- **Single-threaded**: O código é executado em uma única thread usando uma pilha.
- **Fila de Eventos**: Eventos aguardam na fila até que a pilha esteja vazia.
- **Loop de Eventos**: Move eventos da fila para a pilha para execução.



## Características da Linguagem JavaScript

### Atualizações Constantes
A linguagem é atualizada anualmente com novos recursos que incluem:
- **Funcionalidades modernas**.
- **Adoção desigual** entre navegadores (verifique em [caniuse.com](https://caniuse.com)).
- Uso de **polyfills** para compatibilidade.

### Sensibilidade a Maiúsculas e Minúsculas
- JavaScript é **case-sensitive**.
- Diferente de Apex e SOQL, onde não há distinção de maiúsculas e minúsculas.

### Declaração de Variáveis
- **`var`**: Escopo de função, mutável.
- **`let`**: Escopo de bloco, mutável.
- **`const`**: Escopo de bloco, imutável.

#### Exemplo:
```javascript
var bike = "Mountain Bike";
let gear = 5;
const maxGears = 12;

bike = "Road Bike"; // permitido
gear = 3; // permitido
maxGears = 10; // erro
```


## Coerção de Tipo Implícita
Quando operadores encontram tipos incompatíveis, eles tentam converter os valores.

#### Exemplo:
```javascript
let num1 = 9 * "3"; // 27 (conversão para número)
let num2 = 9 + "3"; // "93" (concatenação como string)
```

Evite usar coerção implícita e prefira os operadores **`===`** e **`!==`** para comparações seguras.


## Valores Truthy e Falsy
- **Falsy**: `false`, `0`, `""`, `null`, `undefined`, `NaN`.
- **Truthy**: Todos os demais valores.

#### Exemplo de Verificação Simples:
```javascript
const record = response.getReturnValue();
if (record) {
  // Processa o registro se for truthy
}
```

## Ponteiro `this`
- O valor de `this` é determinado **pelo contexto de execução**, não pela definição da função.
- Em Apex, `this` sempre referencia a instância da classe atual, mas em JavaScript, é mais dinâmico.

## Funções Como Valores
- Funções são objetos em JavaScript e podem ser:
  - Atribuídas a variáveis.
  - Passadas como parâmetros.
  - Usadas como retornos.

Exemplo:
```javascript
const greet = function(name) {
  return `Hello, ${name}`;
};
console.log(greet("John"));
```

# Entendendo o JavaScript no Navegador

## Como o JavaScript Funciona no Navegador

### Diferença Entre o Runtime do JavaScript e o Navegador
- O motor de runtime do JavaScript interpreta e executa códigos JavaScript, enquanto o navegador atua como cliente para servidores web.
- O navegador utiliza o motor JavaScript para processar códigos embutidos e oferece APIs para interagir com o ambiente local e a interface da web.

### APIs da Web
- As APIs permitem que o navegador ofereça funcionalidades como:
  - **DOM API**: Interação com a estrutura da página.
  - **Fetch API**: Requisições assíncronas ao servidor.
  - **APIs de multimídia**: Trabalhar com áudio, vídeo e gráficos.
  - **APIs de dispositivo**: Geolocalização, orientação e armazenamento local.

### Compatibilidade e Padrões
- As APIs da web são padronizadas para garantir que o código JavaScript seja multiplataforma.
- Ferramentas como [caniuse.com](https://caniuse.com) ajudam a verificar a adoção de APIs por diferentes navegadores.

---

## O Modelo de Objeto do Documento (DOM)
- O DOM é uma representação em árvore da página HTML, que permite manipular seus elementos via JavaScript.
- Estrutura:
  - **`window`**: Representa a janela do navegador.
  - **`document`**: Representa a página carregada.
  - **Nós e folhas**: Elementos e conteúdos na página.

### Exemplo: Adicionando Itens a uma Lista
```javascript
const input = document.querySelector('input');
const button = document.querySelector('button');
const ul = document.querySelector('ul');

button.addEventListener('click', () => {
  const li = document.createElement('li');
  li.textContent = input.value;
  ul.appendChild(li);
  input.value = '';
});
```
Esse exemplo interage com o DOM para:
1. Ler o valor do campo de entrada.
2. Criar um elemento `<li>`.
3. Inserir o elemento na lista.
4. Limpar o campo de entrada.

---

## Encapsulamento com Shadow DOM
- O **Shadow DOM** cria limites ao redor de partes da interface, protegendo-as de alterações externas acidentais ou maliciosas.
- Eventos propagados através do limite são redirecionados, mantendo o encapsulamento.

### Exemplo: Componentes Lightning e DOM
#### Renderização Automática
- Propriedades JavaScript reativas em componentes Lightning Web Components (LWC) atualizam automaticamente o DOM.

**Exemplo:**
**JS:**
```javascript
import { LightningElement } from 'lwc';
export default class Demo extends LightningElement {
    text = 'Texto vindo de uma propriedade JS';
}
```
**HTML:**
```html
<template>
    <lightning-card title="Exemplo DOM">
        <p>
            <lightning-formatted-text value={text}></lightning-formatted-text>
        </p>
    </lightning-card>
</template>
```

#### Manipulação Explícita do DOM
- A manipulação direta do DOM é rara, mas possível para componentes mais complexos.
- Uso de diretivas como **`lwc:if`**, **`lwc:elseif`** e **`lwc:else`** para renderização condicional.

**Exemplo:**
**JS:**
```javascript
import { LightningElement } from 'lwc';
export default class ConditionalButton extends LightningElement {
    show = true;
    handleClick() {
        this.show = !this.show;
    }
}
```
**HTML:**
```html
<template>
    <lightning-card title="Renderização Condicional">
        <template lwc:if={show}>
            Exibindo o texto!
        </template>
        <template lwc:else>
            Texto oculto!
        </template>
        <lightning-button onclick={handleClick} label="Trocar"></lightning-button>
    </lightning-card>
</template>
```

---

## Conclusão
- O DOM e as APIs do navegador são essenciais para criar experiências ricas em JavaScript.
- O **Lightning Web Components** simplifica manipulações do DOM com abstrações reativas, permitindo construir interfaces dinâmicas de forma eficiente.



# Trabalhando com Objetos, Classes e Herança Prototípica no JavaScript

## Introdução aos Objetos no JavaScript
- Objetos são fundamentais no JavaScript e possuem as seguintes características:
  - **Não possuem classes** no sentido de linguagens como Java ou C#.
  - Cada objeto herda de outro objeto.
  - São mutáveis e têm contexto de variáveis próprio.

---

## Criando Objetos

### Notação Literal de Objetos
Forma declarativa de criar objetos diretamente com propriedades e métodos.
```javascript
const bike = {
  gears: 10,
  currentGear: 3,
  changeGear: function(direction, changeBy) {
    if (direction === 'up') {
      this.currentGear += changeBy;
    } else {
      this.currentGear -= changeBy;
    }
  }
};
console.log(bike.gears); // 10
bike.changeGear('up', 1);
console.log(bike.currentGear); // 4
```

### Construtores
Permitem criar múltiplas instâncias com as mesmas propriedades e métodos.
```javascript
function Bike(gears, startGear) {
  this.gears = gears;
  this.currentGear = startGear;
}
Bike.prototype.changeGear = function(direction, changeBy) {
  if (direction === 'up') {
    this.currentGear += changeBy;
  } else {
    this.currentGear -= changeBy;
  }
};
const bike = new Bike(10, 3);
bike.changeGear('up', 2);
console.log(bike.currentGear); // 5
```
- **`prototype`**: Permite compartilhar métodos entre todas as instâncias criadas pelo mesmo construtor.

---

## Propriedades e Funções em Objetos
- **Propriedades**: Podem ser primitivas, objetos ou arrays.
- **Funções**: São atribuídas como métodos.

### Exemplo de Objeto Complexo
```javascript
const bike = {
  transmission: {
    frontGearTeeth: [30, 45],
    rearGearTeeth: [11, 13, 15]
  },
  calculateGearRatio: function() {
    let front = this.transmission.frontGearTeeth[0];
    let rear = this.transmission.rearGearTeeth[0];
    return front / rear;
  }
};
console.log(bike.calculateGearRatio()); // 2.727272727
```

---

## Herança Prototípica
- **Protótipos**: Permitem que objetos herdem propriedades e métodos de outros objetos.
- **Cadeia de protótipos**: Implementa herança múltipla ao conectar vários objetos.

### Exemplo:
```javascript
function Bike(gears, startGear) {
  this.gears = gears;
  this.currentGear = startGear;
}
Bike.prototype.changeGear = function(direction, changeBy) {
  if (direction === 'up') {
    this.currentGear += changeBy;
  } else {
    this.currentGear -= changeBy;
  }
};
```

---

## Sintaxe de Classes no JavaScript
- Introduzida como **"syntactic sugar"** para simplificar o uso de protótipos.
- Herança implementada com a palavra-chave `extends`.

### Exemplo de Classe:
```javascript
class Bike {
  constructor(gears, startGear) {
    this.gears = gears;
    this.currentGear = startGear;
  }
  changeGear(direction, changeBy) {
    if (direction === 'up') {
      this.currentGear += changeBy;
    } else {
      this.currentGear -= changeBy;
    }
  }
}
const bike = new Bike(10, 5);
bike.changeGear('up', 2);
console.log(bike.currentGear); // 7
```
- Funções e propriedades pertencem automaticamente à cadeia de protótipos.

---

## Lightning Web Components e Objetos
- **Uso de Classes**: Os componentes Lightning utilizam classes para definir propriedades e métodos.
```javascript
import { LightningElement } from 'lwc';
export default class MyComponent extends LightningElement {
  myProperty = 'Hello';
  myFunction() {
    console.log(this.myProperty);
  }
}
```
- **Encapsulamento**: Permite criar interfaces reativas e otimizadas.

---

## Conclusão
- Objetos e herança prototípica são a base da programação em JavaScript.
- A sintaxe de classes facilita a implementação de padrões de herança.
- Nos Lightning Web Components, esses conceitos são aplicados para construir interfaces dinâmicas e escaláveis.

