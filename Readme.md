# OSC / OBS desde TidalCycles

OSC: Open Sound Control

Open Sound Control es un protocolo abierto que define un formato de mensajes que facilita la comunicación entre dispositivos capacitados para recibir o enviar datos por medio de la red, como ordenadores, sintetizadores de sonido y otros controladores multimedia.

Referencias:

http://tidalcycles.org/docs/configuration/MIDIOSC/osc/

 **DIEGO DORADO**

https://www.youtube.com/watch?v=t6KZ03Wp66M

https://github.com/diegodorado/tidal-hydra-tutorial
- tadokoro https://club.tidalcycles.org/t/sending-osc-out-of-tidal-again-help/3318/9

Generalidades:

- existen varias formas de enviar OSC desde TidalCycles. ~dirt y OSCdef. Este proyecto trabaja con OSCdef pues solo evalúa las variables que se envian desde TidalCycles a SC.

- Se debe configurar BootTidal.hs con con las funciones para enviar los mensajes OSC hacia supercollider.

- También se debe configurar el archivo startup.scd de Supercollider para que reciva y envie los mensajes de TidalCycles.

- La comunicación entre TidalCycles y OBS se hace por medio de un plugins de OSC para OBS, quien a su vez trabaja con otro plugins de OBS para conexiones websocket. A continuación los enlaces de los plugins para OBS.

- OSC para OBS https://github.com/jshea2/OSC-for-OBS/releases/
- https://github.com/obsproject/obs-websocket/releases/tag/4.9.1