#language: pt
  @run
  Funcionalidade: Realizando um simples CRUD na classe de processo.

    Cenário de Fundo:
      Dado que o usuário está na página de processos

    Cenário: Simples POST com todos os campos preenchidos corretamente
      E o usuário digita no campo "vara" o valor "79"
      E o usuário digita no campo "numero_processo" o valor "12314"
      E o usuário digita no campo "natureza" o valor "Engenharia"
      E o usuário digita no campo "partes" o valor "Daiane x Juliana"
      E o usuário digita no campo "urgente" o valor "S"
      E o usuário digita no campo "arbitramento" o valor "N"
      E o usuário digita no campo "assistente_social" o valor "Daiane Figueiredo e Juliana"
      E o usuário digita no campo "data_entrada" o valor "2020-02-12"
      E o usuário digita no campo "data_saida" o valor "2020-02-20"
      E o usuário digita no campo "data_agendamento" o valor "2020-02-13"
      E o usuário digita no campo "status" o valor "Aguardando"
      E o usuário digita no campo "observacao" o valor "Sem Observações"
      Quando o usuário clicar em salvar
      Então o usuário deveria receber uma mensagem de "salvo com sucesso"
      E o usuário visualiza o campo "vara" com valor "79"

    Esquema do Cenário: Simples GET com todos os campos preenchidos corretamente
      E o usuário irá visualizar o processo com id <id>
      Quando o usuário clicar em visualizar
      Então o usuário deveria receber uma mensagem de "<mensagem>"

      Exemplos:
      | id   | mensagem       |
      |  7   | sucesso        |
      |321332| não encontrado |

    Cenário: Simples PUT com todos os campos preenchidos corretamente
      E o usuário irá visualizar o processo com id 7
      E o usuário digita no campo "vara" o valor "10"
      E o usuário digita no campo "numero_processo" o valor "12355"
      E o usuário digita no campo "natureza" o valor "Impacta"
      E o usuário digita no campo "partes" o valor "Dai x Ju"
      E o usuário digita no campo "urgente" o valor "S"
      E o usuário digita no campo "arbitramento" o valor "N"
      E o usuário digita no campo "assistente_social" o valor "Daiane e Juliana"
      E o usuário digita no campo "data_entrada" o valor "2020-02-12"
      E o usuário digita no campo "data_saida" o valor "2020-02-20"
      E o usuário digita no campo "data_agendamento" o valor "2020-02-13"
      E o usuário digita no campo "status" o valor "Esperando entrevista"
      E o usuário digita no campo "observacao" o valor "Nenhuma"
      Quando o usuário clicar em atualizar
      Então o usuário deveria receber uma mensagem de "sucesso"
      E o usuário visualiza o campo "vara" com valor "10"

    Cenário: Simples DELETE com todos os campos preenchidos corretamente
      E o usuário digita no campo "vara" o valor "4"
      E o usuário digita no campo "numero_processo" o valor "12314"
      E o usuário digita no campo "natureza" o valor "Engenharia"
      E o usuário digita no campo "partes" o valor "Daiane x Juliana"
      E o usuário digita no campo "urgente" o valor "S"
      E o usuário digita no campo "arbitramento" o valor "N"
      E o usuário digita no campo "assistente_social" o valor "Daiane Figueiredo e Juliana"
      E o usuário digita no campo "data_entrada" o valor "2020-02-12"
      E o usuário digita no campo "data_saida" o valor "2020-02-20"
      E o usuário digita no campo "data_agendamento" o valor "2020-02-13"
      E o usuário digita no campo "status" o valor "Aguardando"
      E o usuário digita no campo "observacao" o valor "Sem Observações"
      E o usuário clicar em salvar
      Quando o usuário clicar em deletar
      E o usuário clicar em visualizar
      Então o usuário deveria receber uma mensagem de "não encontrado"