(
// codigo OSC para usar OBS con OSCdef -- este no lo uso
/*a = NetAddr.new("127.0.0.1",7777); //your osc port
~dirt.receiveAction = { |e|
  if ( (e.at(\escena) != 0),
     { a.sendMsg("/scene", e.at(\escena)); }, {}
	);
  if ( (e.at(\grabarv) != 3),
     { a.sendMsg("/setRecording", e.at(\grabarv)); }, {}
	);
  if ( (e.at(\flashr90) != 3),
		{ a.sendMsg("/flashRedoble90BPM/mediaRestart") }, {}
	);
};*/

// codigo OSC para usar OBS con OSCdef, pues con ~dirt siempre envia todos los atributos, con OSCdef solo envía los que encuentra.
a = NetAddr.new("127.0.0.1",7777);
OSCdef(\tidalplay, {
	arg msg;
	// OBS basico
	if ( (msg.matchItem('escena') ),
		{
		e = msg.indexOf(\escena) + 1;
		//e.postln;
		a.sendMsg("/scene", msg[e]); }
	);
	if ( (msg.matchItem('grabarv') ),
		{
		v = msg.indexOf(\grabarv) + 1;
		//v.postln;
		a.sendMsg("/setRecording", msg[v]); }
	);
	// OBS media
	if ( (msg.matchItem('media') ),
		{
		f = msg.indexOf(\media) + 1;
		//f.postln;
		a.sendMsg("/media/mediaRestart"); }
	);
 }, '/dirt/play', n);
);
