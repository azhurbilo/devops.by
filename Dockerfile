from grahamc/jekyll

ADD ./Gemfile /src/
RUN gem install bundle && bundle update

#ENTRYPOINT ["/bin/sh", "-c"]
