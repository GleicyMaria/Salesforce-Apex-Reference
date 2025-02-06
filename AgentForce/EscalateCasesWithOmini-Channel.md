# **Escalar Conversas para um Representante de Serviço com Omni-Channel**  

## 📌 Visão Geral  
Os **Agentes de IA** no Salesforce operam com permissões e ações limitadas e podem não ser capazes de resolver todas as conversas dos clientes. Quando isso ocorre, a conversa é **escalada para um representante de serviço humano** usando o tópico especial **Escalation**.  

Para garantir o direcionamento correto dos casos escalados, é necessário **configurar um Flow do Omni-Channel**.  

---

## **🔹 Permissões Necessárias**  

Para **habilitar agentes no Salesforce**, o usuário precisa de uma das permissões:  
✅ **Gerenciar agentes de IA**  
OU  
✅ **Personalizar aplicação**  

Para **criar e gerenciar agentes de serviço**, o usuário deve ter:  
✅ **Gerenciar agentes de serviço do Agentforce** **E** **Gerenciar agentes de IA**  
OU  
✅ **Personalizar aplicação**  

---

## **⚙️ Como Configurar a Escalação de Conversas**  

### **1️⃣ Configurar o Tópico de Escalação**  
O tópico **Escalation** vem pré-configurado com todos os agentes de serviço e pode ser editado conforme a necessidade.  

1. No **Setup (Configuração)**, acesse **Quick Find (Busca rápida)** e selecione **Agents (Agentes)**.  
2. Escolha o agente de serviço desejado.  
3. Vá até a aba **Connections** e role até **Outbound Omni-Channel Flow**.  
4. Em **Choose a Flow**, selecione o **Omni-Channel Flow** que irá direcionar os casos escalados.  
5. Personalize a **mensagem de Escalation**, que será enviada aos clientes quando a escalação for acionada.  

🔹 **Observação:** O tópico **Escalation** não contém ações predefinidas, mas é recomendável adicionar ações personalizadas para garantir que a escalação siga as diretrizes da empresa.  

---

## **🚀 Configuração Guiada do Omni-Channel para Roteamento de Casos**  

### **O que é o Omni-Channel Setup Flow?**  
O **Omni-Channel Setup Flow** é a forma mais rápida e fácil de configurar o roteamento de casos no **Lightning Experience**.  

### **1️⃣ Como Acessar o Setup Flow**  
1. No **Lightning Experience**, clique no ícone de engrenagem e selecione **Service Setup**.  
2. Procure pelo **Omni-Channel Setup Flow** na lista de fluxos recomendados.  
3. Se o fluxo não estiver visível, clique em **View All** para exibir todas as opções disponíveis.  
4. Clique no **tile** correspondente para iniciar o fluxo.  

### **2️⃣ O Que Esse Fluxo Faz?**  
Durante a configuração, o fluxo guiado permite:  
✅ **Ativar o Omni-Channel**, se ainda não estiver habilitado.  
✅ **Criar uma fila** para armazenar os casos antes de serem encaminhados aos agentes.  
✅ **Configurar regras de roteamento e presença** para definir prioridades e distribuição da carga de trabalho.  
✅ **Selecionar usuários** que poderão receber solicitações de atendimento.  
✅ **Definir capacidade dos agentes** e o tamanho dos itens de trabalho.  

🔹 **Importante:** Esse fluxo configura o roteamento baseado em filas, e **não o roteamento baseado em habilidades**, que deve ser configurado manualmente.  

---

## **🔧 O Que É Criado Durante o Setup Flow?**  

✔ **Habilitação do Omni-Channel**, se ainda não estiver ativado.  
✔ **Criação de um Service Channel** para casos, permitindo roteamento via Omni-Channel.  
✔ **Criação de Status de Presença** para os agentes:  
   - **Available-Case** (Disponível para casos)  
   - **On Break** (Em pausa)  
   - **Busy** (Ocupado)  
✔ **Criação e atribuição de um Conjunto de Permissões** que concede acesso ao Omni-Channel.  
✔ **Adição do Componente Omni-Channel** na **barra de utilitários do Lightning Service Console**.  

---

## **📌 O Que Fazer Depois?**  
Agora que o Omni-Channel está configurado:  
✅ Personalize as regras de roteamento em **Omni-Channel Settings**.  
✅ Revise os usuários atribuídos às filas.  
✅ Ajuste a carga de trabalho e a prioridade das solicitações.  

Para mais personalizações, consulte a documentação oficial do Salesforce. 🚀  

- **Documentação do Salesforce**: [Escalate Conversations to a Service Rep](https://help.salesforce.com/s/articleView?id=service.service_agent_escalation.htm&type=5)

- **Documentação do Salesforce**: [Guided Setup Flow for Routing Cases with Omni-Channel](https://help.salesforce.com/s/articleView?id=service.console_lex_service_setup_omnichannel.htm&type=5)

