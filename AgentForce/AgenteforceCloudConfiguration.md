# **Guia de Configuração de Agentes Agentforce Cloud**  

Este documento fornece um guia passo a passo para configurar e personalizar agentes no **Agentforce Cloud**, garantindo sua implantação e funcionamento adequado.

## **1️⃣ Habilitação de Recursos e Configurações Iniciais**  

Antes de criar um agente, é necessário ativar os recursos essenciais:  

### **Ativar Einstein e Agentforce**  
1. Acesse **Setup (Configuração)**.  
2. No campo **Quick Find (Busca rápida)**, procure por **Einstein Setup (Configuração do Einstein)**.  
3. Ative a opção **Turn on Einstein (Ativar Einstein)** e confirme.  
4. Atualize o navegador para aplicar as alterações.  
5. No campo **Quick Find**, procure por **Agents (Agentes)**.  
6. Ative o **Agentforce** e o **Einstein Copilot for Salesforce**.

## **2️⃣ Publicação do Site no Experience Cloud**  

Se o agente for implantado via **Experience Cloud**, siga os passos abaixo:  
1. No **Setup**, pesquise **All Sites (Todos os sites)**.  
2. No site desejado, clique em **Builder (Criador)**.  
3. Clique em **Publish (Publicar)** no canto superior direito.  
4. Confirme a publicação e clique em **Got It (Entendi)**.  
5. No **Experience Builder**, acesse **Salesforce Setup (Configuração do Salesforce)**.  
6. Atualize o navegador para recarregar a página.  

## **3️⃣ Conceder Permissões ao Perfil de Usuário do Agente**  

1. No **Setup**, pesquise **Users (Usuários)**.  
2. Selecione o usuário associado ao agente (exemplo: **EinsteinServiceAgent**).  
3. Vá até a seção **Permission Set Assignments (Atribuições de conjuntos de permissões)** e clique em **Edit Assignments (Editar atribuições)**.  
4. Adicione os conjuntos de permissões necessários, como **Agentforce Service Agent User** e **Service Agent Permissions**.  
5. Clique em **Save (Salvar)**.

## **4️⃣ Criando um Novo Agente no Agentforce Cloud**  

1. No **Setup**, pesquise **Agents (Agentes)**.  
2. Clique em **+ New Agent (Novo agente)**.  
3. Selecione o tipo de agente adequado (exemplo: **Agentforce Service Agent**).  
4. Clique em **Next (Avançar)**.  
5. Configure os tópicos do agente removendo os desnecessários.  
6. Defina o nome do agente e o nome da API.  
7. Escolha um usuário para associar ao agente.  
8. Clique em **Create (Criar)**.  

## **5️⃣ Adicionar e Personalizar Tópicos e Ações**  

Os tópicos determinam as áreas de atuação do agente. Para adicionar um novo tópico:  

1. No **Agent Builder**, clique em **New (Novo)** e selecione **New Topic (Novo Tópico)**.  
2. Defina o nome do tópico e a descrição.  
3. Configure as instruções de atuação do agente.  
4. Clique em **Next (Avançar)** e **Finish (Terminar)**.  

Agora, adicione ações personalizadas ao tópico:  

1. No **Agent Builder**, vá para a aba **This Topic’s Actions (Ações desse tópico)**.  
2. Clique em **New (Novo) > Add Action (Adicionar ação)**.  
3. Escolha o tipo de ação (exemplo: **Flow (Fluxo)**).  
4. Selecione um fluxo apropriado (exemplo: **Get Experience Details**).  
5. Marque os campos de entrada e saída necessários.  
6. Clique em **Finish (Concluir)**.  

Repita esse processo para todas as ações essenciais, que precisam ser criada:
No modulo de configurações existem as seguintes ações abaixo como exemplo.  
- **Obter detalhes da experiência**.  
- **Validar detalhes do cliente**.  
- **Obter registros de sessões**.  
- **Gerar agenda personalizada**.  
- **Criar uma reserva**.  

## **6️⃣ Testar o Agente**  

1. No **Agent Builder**, vá até **Conversation Preview (Visualização da Conversa)**.  
2. Clique em **Refresh (Atualizar)** no canto superior direito.  
3. Interaja com o agente enviando perguntas para verificar seu funcionamento.  

## **7️⃣ Publicar e Atualizar a Implantação**  

1. No **Setup**, pesquise **Embedded Service Deployments (Implantações de serviço incorporado)**.  
2. Selecione a implantação ativa e clique em **Publish (Publicar)**.  

Se necessário, atualize fluxos para garantir o encaminhamento correto das interações:  

1. No **Setup**, pesquise **Flows (Fluxos)**.  
2. Edite o fluxo responsável pelo direcionamento do agente (exemplo: **Route to ESA**).  
3. Ajuste os valores de entrada e salve como uma nova versão.  
4. Clique em **Activate (Ativar)**.  

## **8️⃣ Adicionar o Agente ao Site do Experience Cloud**  

1. No **Experience Builder**, clique em **Components (Componentes)**.  
2. Arraste o **Embedded Messaging (Mensagens incorporadas)** para a página.  
3. Clique em **Publish (Publicar)** para salvar as alterações.  

## **9️⃣ Testar a Experiência do Usuário**  

1. Acesse o site da **Experience Cloud** publicado.  
2. Clique no ícone de mensagens no canto inferior direito.  
3. Interaja com o agente para validar suas respostas e ações.  

## **🔗 Recursos Adicionais**  

- **Trailhead**: [Agentforce Service Agent: Vista rápida](https://trailhead.salesforce.com/pt-BR/content/learn/modules/agentforce-service-agent-quick-look)  
- **Ajuda do Salesforce**: [Configurar gerenciadores de agentes de atendimento](https://help.salesforce.com/s/articleView?id=service.configure_service_agent_managers.htm&type=5)  
- **Documentação do Salesforce**: [Introdução aos agentes do Agentforce](https://developer.salesforce.com/docs/einstein/genai/guide/get-started-copilot.html?_ga=2.117596809.1829370317.1738817565-1679990334.1738817565)  

