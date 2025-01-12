# Operador de Coalescência Nula (??)

## Introdução
O operador `??` simplifica verificações de valores nulos no Apex, tornando o código mais legível e menos verboso.

## Sintaxe
```apex
valor = valor1 ?? valor2;
```
- valor1: Verificado quanto a null.
- valor2: Usado se valor1 for null.

## Exemplo
```apex
String nome = null;
String saudacao = nome ?? 'Usuário';
System.debug(saudacao); // Saída: Usuário
```

## Benefícios
- Elimina verificações explícitas de nulos.
- Reduz a verbosidade do código.
- Facilita a leitura e manutenção.

Para mais informações, consulte a [documentação oficial do Salesforce](https://help.salesforce.com/s/articleView?id=release-notes.rn_apex_NullCoalescingOper.htm&release=248&type=5).