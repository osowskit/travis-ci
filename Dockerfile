FROM ruby

COPY entrypoint.sh /
RUN gem install travis && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
