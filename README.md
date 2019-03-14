# GEODATA: Desafio técnico para engenheiro de dados
*Autor:* André Costa (2019-03-11)

#### Notas da versão:

- Especificação do esquema de dados do warehouse agora inclui partições do Hive
- Alterado o nome do script que gera a dimensão CALENDARIO de *generate-data-dimension* para *generate calendario-dimension*
- Adaptação dos scripts *generate-calendario-dimension*, *ETL-concorrente-dimension* e *ETL-fluxo-fact*, para suportar o uso de partições

## INSTRUÇÕES

1. Execute o script *run_docker_container.sh* para obter a imagem e gerar o container corretamente

2. Execute o script *copy_data_to_docker_container.sh* para copiar para dentro do container os arquivos de dados, e os scripts

3. Encerre a execução atual do container recém criado, e execute novamente o script *run_docker_container.sh* . Esta é uma etapa importante para ajustar as permissões para os arquivos copiados no passo anterior

4. Desta vez, dentro do container, execute o script *start-hadoop-services.sh* e aguarde a inicialização dos serviços Hadoop, Spark e Hive

5. Execute o comando *pyspark* para iniciar o jupyter notebook

6. Na máquina host, acesse por meio de um web browser o endereço localhost:8888 (a senha é Jupyterdev)

7. EXECUTANDO PIPELINE ETL (a ordem é específica):
  
       1. abra o notebook *create-warehouse-schema*, e execute todos os passos
  
       2. abra o notebook *generate-celendario-dimension*, e execute todos os passos
  
       3. abra o notebook *ETL-concorrente-dimension*, e execute todos os passos
  
       4. abra o notebook *ETL-fluxo-fact*, e execute todos os passos

8. EXECUTANDO O SERVIDOR HTTP COM SERVIÇO REST:

       1. abra o notebook *REST-server*, e execute todos os passos. IMPORTANTE! Mantenha executando o último passo
  
       2. na máquiana host, acesse por meio de um web browser o endereço localhost:8008

## END POINTS

1. **/estabelecimentos/lista** => lista todos os estabelecimentos com algum registro de fluxo
    
2. **/estabelecimentos/detalhes/*ID*/** => obtém os detalhes para o estabelecimento que contém o ID especificado

## SENHAS USUARIOS DOCKER

- root => Dockerroot

- hadoop => Dockerhadoop

- dev => Dockerdev (não use este usuário)

- postgres => Dockerpostgres

- hiveuser => Dockerhiveuser

## SENHA DO JUPYTER NOTEBOOK

- Jupyterdev
