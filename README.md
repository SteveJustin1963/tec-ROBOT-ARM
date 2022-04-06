# tec-ROBOT-ARM

explore a range of robot arms with differnet motors (dc, stepper, servo)

- servo motor robot hand
![](https://github.com/SteveJustin1963/tec-ROBOT-ARM/blob/master/pics/11.png)


- Bit Bang PWM (pulse width modulation), loop io on/off with duration
``` 
:A
  #01 \>2  \\ high
  20()     \\ delay 10% duty cycle, scale d to get kHz
  #00 \>2  \\ write low
  80()    \\ delay 90% duty cycle, kHz=?
  A;

\\ :A #01 \>2 20() #00 \>2 80() A;
```



## Ref 
- https://tinyurl.com/ud9fysdh
- 
