# openresty-auth-lua
servicio de autenticacion con  implementacion del servidor openresty(distribucion de nginx), para la ejecucion de scripts en lua

TODO...
1- cambiar respuestas genericas del script **nginx-jwt.lua** por el error exacto 

```lua
function M.auth(claim_specs)
-- ...........

if auth_header == nil then
        ngx.log(ngx.WARN, "No Authorization header")
        nginx.say("se desconoce el token de autenticacion")
        ngx.exit(ngx.HTTP_UNAUTHORIZED)
 end

```


2- Update readme

