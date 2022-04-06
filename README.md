# tec-ROBOT-ARM

explore a range of robot arms with differnet motors (dc, stepper, servo)

- servo motor robot hand
![](https://github.com/SteveJustin1963/tec-ROBOT-ARM/blob/master/pics/11.png)


- Bit Bang PWM (pulse width modulation), loop io on/off with duration
``` 
\\ this will move the servo a short angle
:A
a! \\ enter 
#01 \>2   \\ high
a@()     \\ delay 10% duty cycle
#00 \>2   \\ write low
a@  ()     \\ delay 90% duty cycle
A;

\\ :A #01 \>2 20() #00 \>2 80() A;
```






## Ref 
- https://tinyurl.com/ud9fysdh
- 
