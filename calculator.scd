/*Generated with GUI Maker http://trysohard.info/GUI-Maker/
Copyright (C) 2016 Tryson Hardie.
*/

var buttArr, stackStr = "";
var w,bt0,btminus,btplus,btenter,bt3,bt2,bt1,bt6,bt5,bt4,bt9,bt8,bt7,txt,cntnr130;
w = Window.new("gui", Rect(100, 100, 302, 360)).front;

// --- cntnr130 container View
cntnr130 = CompositeView(w, Rect(20, 20, 250, 280));
txt = TextField(cntnr130, Rect(20,20, 230,70))
;
bt7 = Button(cntnr130, Rect(20,100, 50,36))
.states_([["7"]])
;
bt8 = Button(cntnr130, Rect(80,100, 50,36))
.states_([["8"]])
;
bt9 = Button(cntnr130, Rect(140,100, 50,36))
.states_([["9"]])
;
bt4 = Button(cntnr130, Rect(20,145, 50,36))
.states_([["4"]])
;
bt5 = Button(cntnr130, Rect(80,145, 50,36))
.states_([["5"]])
;
bt6 = Button(cntnr130, Rect(140,145, 50,36))
.states_([["6"]])
;
bt1 = Button(cntnr130, Rect(20,190, 50,36))
.states_([["1"]])
;
bt2 = Button(cntnr130, Rect(80,190, 50,36))
.states_([["2"]])
;
bt3 = Button(cntnr130, Rect(140,190, 50,36))
.states_([["3"]])
;
btenter = Button(cntnr130, Rect(20,240, 128,36))
.states_([["="]])
;
btplus = Button(cntnr130, Rect(200,100, 50,36))
.states_([["+"]])
;
btminus = Button(cntnr130, Rect(200,145, 50,36))
.states_([["-"]])
;
bt0 = Button(cntnr130, Rect(200,190, 50,36))
.states_([["0"]])
;




buttArr = [bt0,btminus,btplus,bt3,bt2,bt1,bt6,bt5,bt4,bt9,bt8,bt7];

buttArr.do({ arg item, i;
	item.action_({ arg butt;
		stackStr = stackStr + butt.states[0][0];
		txt.string_(stackStr);

        });
});

txt.action_({ arg txtt;
	stackStr = txtt.string;
	btenter.value;
	});

btenter.action_({ arg butt;

	stackStr = "";
	// txt.string_("i don't know");
	txt.string_(txt.string.interpret);

	});