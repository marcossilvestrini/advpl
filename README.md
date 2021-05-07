# LEARNING ADVPL

## Learning ADVPL Language

## Getting Started

Fork the project and enjoy.
Atention for pre requisites and License!!!

## Prerequisites

Protheus ERP Instaled

## Authors

Marcos Silvestrini

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

## References

[TDS VSCode](https://github.com/totvs/tds-vscode)
[TDS: Compilação](https://github.com/totvs/tds-vscode/blob/master/docs/compilation.md)
[Fontes Curso ADVPL para Leigos](https://drive.google.com/drive/u/0/folders/0B2bXz0zOen_gVHpEUGQtMXczclU)
[Lista de Tabelas](https://terminaldeinformacao.com/wp-content/tabelas/sa1.php)
0[Limite Tamanho de Nomes de Funções](https://tdn.totvs.com/pages/viewpage.action?pageId=172296510)
[Estruturas de Repetição](https://tdn.totvs.com/pages/viewpage.action?pageId=6063082)

## Lista de Tabelas SX

SX1 PERGUNTAS E RESPOSTAS\
SX2 MAPEAMENTO DE ARQUIVOS\
SX3 DICIONARIO DE DADOS\
SX4 AGENDA DO SCHEDULE DE PROCESSO\
SX5 TABELAS GENERICAS\
SX6 PARAMETROS\
SX7 GATILHOS\
SX9 RELACIONAMENTOS ENTRE ARQUIVOS\
SXA PASTAS CADASTRAIS\
SXB CONSULTA PADRAO\
SXC CONTROLE DE USUARIOS\
SXD CONTROLE DE SCHEDULE DE PROCESSOS\
SXE SEQUENCIA DE DOCUMENTOS +1\
SXF SEQUENCIA DE DOCUMENTOS PROXIMO\
SXG TAMANHO PADRAO PARA CAMPOS\
SXK CONTROLE DE PERGUNTAS\
SXO CONTROLE DE LOGS POR TABELAS\
SXP CONTROLE DE TRANSAÇÃO – LOG DE ALTERAÇAO\
SIX INDICE DOS ARQUIVOS 1\
SINDEX INDICE DOS ARQUIVOS 2\
SXM CONTROLE DE SCHEDULE PROCESSOS ESPECIAIS\
SXV MASHUP

## Nomes de Tabelas Customizadas

- SZX
- ZXX
- PXX

X são caracteres abstratos que podem ir de 0 a Z\

Exemplos: SZ1,SZA,ZA1,

## Campo de Tabela com Numerção Automatica

Em Opções, Inic. Padrão, adicionar:\
GETSXENUM("ZZB","ZZB_COD")

## Backup de Dicionario no Banco

SX2
SX3
SXB
SIX

## Como Executar Programas Customizados(Antigo Formulas)

Executar programa pelo SIGAGFE em:  Miscelanea -> Executar Programas(Ambiente 78)

## MVC

### OPTIONS

1 - Pesquisar
2 - Visualizar
3 - Incluir
4 - Alterar
5 - Excluir
7 - Copiar

## Backup Tables in PostgreSQL with pg_dump

`C:\Program Files\pgAdmin 4\v5\runtime\pg_dump.exe --file "F:\\Projetos\\udemy\\curso-advlp-para-leigos\\tables\\zzb_bkp" --host "192.168.0.133" --port "5432" --username "protheus" --no-password --verbose --format=c --blobs --table "public.zzb990" "protheus"`
