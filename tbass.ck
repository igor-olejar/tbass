// Monophonic bass synth
// 1 = SinOsc
// 2 = TriOsc

public class Tbass 
{
    // null references to two types of oscillators
    SinOsc @ sin1;
    SinOsc @ sin2; 
    
    TriOsc @ tri1;
    TriOsc @ tri2;
    
    // other properties
    /*float volume;
    int octave;*/
    
    fun void init(int osc1, int osc2)
    {
        if (osc1 == 1) new SinOsc @=> sin1 => dac;
        if (osc1 == 2) new TriOsc @=> tri1 => dac;
        
        if (osc2 == 1) new SinOsc @=> sin2 => dac;
        if (osc2 == 2) new TriOsc @=> tri2 => dac;
        
        this.noteOff(); // we want to mute the synth when an instance is created
        
    }
    /*
    fun void setVolume(float volume) 
    {
        volume => this.volume;
    }
    
    fun void noteOn(float volume)
    {
        volume => this.setVolume;
        this.volume => sin1.gain;
        this.volume => sin2.gain;
        
        this.volume => tri1.gain;
        this.volume => tri2.gain;
    }
    */

    fun void noteOff()
    {
        0 => sin1.gain => tri1.gain => sin2.gain => tri2.gain;
    }
    
    /*
    fun void setFreq(float frequency) 
    {
        frequency => sin1.freq;
        frequency => sin2.freq;
        
        frequency => tri1.freq;
        frequency => tri2.freq;
    }
    
    fun void setOctave(int octave)
    {
        octave => this.octave;
    }
    */
}

Shmoyko1 shm;
(1, 1) => shm.init;
