# NLP Stemmers

Análise comparativa de algoritmos de stemming (RSLP, Porter e Snowball) sobre o corpus CETENFolha.

## Pré-requisitos

- Python 3.x
- `bash` e `awk` disponíveis no sistema
- `iconv` (geralmente já instalado no Linux/macOS)

## Configuração do ambiente

### 1. Dataset — CETENFolha

Faça o download do corpus **CETENFolha** e coloque o arquivo `CETENFolha-1.0` dentro da pasta `dataset/`:

```
dataset/
└── CETENFolha-1.0
```

> O CETENFolha está disponível no site do Linguateca: https://www.linguateca.pt/cetenfolha/

### 2. Pré-processar o corpus

Execute o script para extrair os 100 primeiros artigos, remover tags XML e converter a codificação para UTF-8:

```bash
bash remove_xml.sh
```

O arquivo `dataset/CETENFolha-100artigos.txt` será gerado.

### 3. Criar o ambiente virtual Python

```bash
python3 -m venv .venv
source .venv/bin/activate
```

### 4. Instalar as dependências

```bash
pip install -r requirements.txt
```

### 5. Executar o notebook

```bash
jupyter notebook stem.ipynb
```

Ou abra o arquivo `stem.ipynb` diretamente no VS Code ou JupyterLab.
