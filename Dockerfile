FROM openresty/openresty:latest

ENV JWT_SECRET="e0pYXk5SMHc6I1pmR1BiO15hbUB9LVlOPjdvfThqczsoYyIxS2k4RGdhIlNPJks7QTpkOGxPLj85XnZmNXlk"

#establecer clave  en b64
#ENV JWT_SECRET_IS_BASE64_ENCODED=true

RUN mkdir /lua-scripts
COPY ./server-conf/lua/scripts/jwt-lua-scripts /lua-scripts

#RUN rm /etc/nginx/conf.d/default.conf
COPY ./server-conf/nginx/nginx.conf /usr/local/openresty/nginx/conf

EXPOSE 80
