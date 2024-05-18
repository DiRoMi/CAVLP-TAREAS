
s.boot;

(
SynthDef(\simpleSine, { |freq = 440, amp = 0.5, dur = 1|
    var env, osc;
    env = EnvGen.kr(Env.perc(0.01, dur), doneAction: 2);
    osc = SinOsc.ar(freq) * env * amp;
    Out.ar(0, osc ! 2);
}).add;
)


Pdef(\simpleSequence,
    Pbind(
        \instrument, \simpleSine,
        \dur, Pseq([0.25, 0.5, 0.75, 1], inf),
        \amp, Pseq([0.1, 0.2, 0.3, 0.4], inf),
        \freq, Pseq([220, 440, 660, 880], inf)
    )
).play;
