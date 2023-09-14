
5 constant SERVO_PIN
1000 constant SERVO_MIN_PULSE
2000 constant SERVO_MAX_PULSE
1500 constant SERVO_NEUTRAL_PULSE

0 constant SERVO_MIN_ANGLE
180 constant SERVO_MAX_ANGLE

: setup ( -- ) \ Initializes the servo pin as an output pin.
    SERVO_PIN OUTPUT pin-mode ;

: pin-high ( -- ) \ Sets the servo pin to high.
    SERVO_PIN pin-high ;

: pin-low ( -- ) \ Sets the servo pin to low.
    SERVO_PIN pin-low ;

: map ( n1 n2 n3 n4 n5 -- n6 ) \ Maps the value between two ranges.
    rot over - * swap over - / swap - + ;

: write_pulse_width ( n -- ) \ Writes a pulse of given width to the servo.
    dup pin-high 
    delay-microseconds 
    pin-low 20 delay-ms ;

: set_servo_position ( n -- ) \ Sets the servo position within valid bounds.
    dup SERVO_MIN_ANGLE < if drop SERVO_MIN_ANGLE then
    dup SERVO_MAX_ANGLE > if drop SERVO_MAX_ANGLE then
    SERVO_MIN_ANGLE SERVO_MAX_ANGLE SERVO_MIN_PULSE SERVO_MAX_PULSE map write_pulse_width ;

: main ( -- ) \ Main loop to read and set servo position.
    setup begin
        read_desired_position set_servo_position 20 delay-ms
    again ;

' main is main


