/*!
 * remark (http://getbootstrapadmin.com/remark)
 * Copyright 2016 amazingsurge
 * Licensed under the Themeforest Standard Licenses
 */

$.components.register("plyr",{mode:"init",init:function(){"undefined"!=typeof plyr&&(!function(d,u){var a=new XMLHttpRequest,b=d.body;"withCredentials"in a&&(a.open("GET",u,!0),a.send(),a.onload=function(){var c=d.createElement("div");c.style.display="none",c.innerHTML=a.responseText,b.insertBefore(c,b.childNodes[0])})}(document,"https://cdn.plyr.io/1.1.5/sprite.svg"),plyr.setup())}});