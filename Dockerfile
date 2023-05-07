# Base image com as dependências do Ruby e do PostgreSQL
FROM ruby:3.0.2
RUN apt-get update && apt-get install -y postgresql-client

# Configuração do diretório de trabalho
WORKDIR /app

# Copia os arquivos de configuração da aplicação
COPY Gemfile Gemfile.lock ./

# Instala as dependências da aplicação
RUN gem install bundler
RUN bundle install --jobs 20 --retry 5

# Copia o restante dos arquivos da aplicação
COPY . .

# Configurações de ambiente
# ENV RAILS_ENV=production
# ENV SECRET_KEY_BASE=<sua-chave-secreta-aqui>

# Criação do banco de dados e execução das migrações
# RUN bundle exec rails db:create
# RUN bundle exec rails db:migrate
# RUN sleep 10 && bundle exec rails db:create
# RUN bundle exec rails db:migrate


# Expõe a porta do servidor da aplicação
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
