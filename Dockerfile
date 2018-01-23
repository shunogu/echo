FROM ruby:2.4.1

RUN git clone https://github.com/guppy0356/echo.git
WORKDIR echo

EXPOSE 8000
CMD ["ruby", "echo.rb"]

