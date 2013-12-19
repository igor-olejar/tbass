// HID
Hid hi;
HidMsg msg;

// connect keyboard
1 => int device;

// open the keyboard
if (!hi.openKeyboard(device)) {
	<<< "Cannot open keyboard" >>>;
	me.exit(); 
}

<<< "Keyboard ready." >>>;

// new instance of the synth
Tbass shm;

shm.init(1, 1);

/*
-2 => shm.setOctave;

// key to MIDI mapper
int ktom[127];
60 => ktom[90];
62 => ktom[88];
64 => ktom[67];
65 => ktom[86];
67 => ktom[66];
69 => ktom[78];
71 => ktom[77];

// wait for key event
while (true)
{
	hi => now;

	// get message
	while(hi.recv(msg)) {
		if (msg.isButtonDown()) {
			Std.mtof(ktom[msg.ascii] + shm.octave*12) => float freq;
			if (freq > 20000) continue;

			freq => shm.setFreq;

			shm.noteOn(0.5);

			80::ms => now;
		} else {
			shm.noteOff();
		}
	}
}
*/
