# Imagem base derivada do Node
FROM node

# Diretório de trabalho
WORKDIR /micro-livraria

# Comando para copiar os arquivos para a pasta /app da imagem
COPY . /micro-livraria

# Comando para instalar as dependências
RUN npm install

# Comando para inicializar (executar) a aplicação
CMD ["node", "/micro-livraria/services/shipping/index.js"]