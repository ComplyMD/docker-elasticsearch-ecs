FROM elasticsearch:2.4
RUN plugin install --batch cloud-aws
RUN plugin install --batch license
RUN plugin install --batch shield