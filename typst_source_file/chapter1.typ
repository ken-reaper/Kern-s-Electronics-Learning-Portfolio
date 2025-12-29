#set text(
  size : 13pt
)

= Chapter 1: The Resistor and Basic Tools

== 1.1) What is Current?

Understanding current requires building upon a few physics topics. Let's begin. 

=== 1.11) Structure and Behavior of Atoms
Atoms are composed of protons and neutrons as their core with electrons orbiting around them. This is an oversimplification, but picture a satellite (like the moon) orbiting around a planet (like the Earth). Protons have a positive charge, neutrons have 0 charge, and electrons have a negative charge. Current and other electrical physics concepts are (mostly) the effects of these electrons.

Protons and electrons push and pull on each other, depending on their charge. 2 protons or 2 electrons would push each other away. 1 proton and 1 electron would move toward each other. The closer they are in distance, the more powerful their force interactions. The strength of the force between them can be calculated through Coulomb's law. 

This electric force is the result of the electric field. This electric field is a trait of a charged object. Perhaps you're more familiar with gravity. The electric field is to a charged object what a gravitational field is to an object with mass. The main difference is that gravitational forces usually pull objects towards them, while electric forces can push and pull. 

=== 1.12) Electrical Potential Energy
Potential energy exists for objects impacted by electromagnetism and gravitational forces. In our context, the electric potential energy (per charge) is the energy related to our electron's starting height when it's stationary. If no force is applied, the potential energy (per charge) will remain the same and not move. Our potential energy (per charge) increases as our height becomes larger and decreases as our height is reduced. 

When a force is applied to a stationary object, its potential energy (per charge) is converted to kinetic energy. Kinetic energy is the energy associated with an object that's moving. The more potential energy (per charge) we start with, the higher will be the resulting kinetic energy. If our potential energy (per charge) is 0, then so is our kinetic energy. 

== 1.13) Electrical Potential Difference
Voltage or electrical potential difference (per charge) is the result of subtracting the potential energy per charge at point A from the potential energy per charge at point B. In order for current to exist between two points, its voltage (electrical potential difference per charge) must not be zero. A voltage of 0 would mean that the potential energy (per charge) at both points is identical (or both are 0). 

The sign of the voltage determines the flow of the current. Various conventions for the direction of current exist. A common one that we will follow is that positive(+) current exits from the + entry of the voltage source. This current will travel across the circuit and return to the voltage source through its negative(-) entry.

With these fundamental concepts in mind, we can define current.

=== 1.14) Electrical Movement in Solid Material 
Imagine a rectangular sheet of  any material. Through some means, we fill it with additional electrons. One example is rubbing it against a wool-like object. The electrons are relatively moving by small amounts since no force is being applied upon them.

Then we add a voltage source to our system. This voltage source creates electric fields that allow for an electric force to occur. This force pushes the electrons from where they are towards the opposite side of the sheet.

These electrons moving means that they carry their negative charge from one side to the other. Current is the amount of charge being moved through a subsection of the sheet over a period of time. $I("current")= (triangle.t q) / (triangle.t t)$ where q = charge and t = time.

This formula is somewhat limited, since the charge may not always be consistent through each interval.To see how fast its changing between these points (or its rate of change), we use the derivative. This results in $I = (d/"dt")(q(t))$.

== 1.15) The Ball on the Hill 
Here's a lens to better understand the relationship between key terms above. 

#figure(
  image("slide_ch1.png", width: 70%),
  caption: [Ball on a hill, about to be pushed]
)

Imagine a ball on top of a hill. That ball is our electron. Without a voltage source, it would remain stationary. Our hill is composed of a smaller and larger right (90 degree) triangle. This forms 2 declining ramps that the ball (electron) will roll down through. These two inclines are connected through an rising curve. That curved incline serves as a ladder or stairs connecting 2 slides that are on the same path.

The potential energy (per charge) of the two triangle declines are their heights. The higher our heights and potential energy (per charge), the more energy that will be produced from the electrons going down the hills. Our potential difference (per charge) is the difference between the heights of the two inclines. It is through the language of electrical potential energy and potential difference (per charge) that our voltage value is defined. 

Once our system as a voltage source, that triggers a mechanism that pushes the ball down the hill. The mechanism triggered by the voltage is the electric field. The force being applied on the ball as it's being pushed downhill is the electric force. 

In our example, we only have one electron going down the hill. In any other context, we will have a significantly larger number of electrons going down that path at the same time. Current can be defined by how quickly the electrons (and their charge) past through a certain area of our hill.

== 1.2) What is a Resistor?

Resistors are likely the first circuit component many encounters. The resistor reduce the current passing through but not by acting as a speed bump for  electrons. Instead, it does so by increasing the amount of voltage for a current to travel from point A to point B. 

Resistors have an attribute known as resistance, which is measured in ohms (\u{03A9}). The higher the resistance, the higher the current reduction.

== 1.25) Resistor Simulation Showcase

Let's see how resistors impact circuit diagrams through a circuit simulation tool or software (like LTspice, it's free).

Let's design 4 circuit diagrams.

The first 2 circuit diagrams both have a voltage source with 10 Volts (V). One has a resistor with 10 \u{03A9} while the other has a resistor with 100 \u{03A9}.
The last 2 circuit diagrams both have a resistor with 30 \u{03A9}. One has a voltage source with 10 V while the other has a voltage source with 100V. Our diagrams should be similar to these. 

#figure(
image("pic_for1_1.png", width: 70%),
caption:[Diagram 1, 10V and 10 \u{03A9} ]
)

#figure(
  image("pic_for1_2.png", width: 70%),
  caption:[Diagram 2, 10V and 100 \u{03A9}]
)

#figure(
  image("pic_for1_3.png", width: 70%),
  caption: [Diagram 3, 10V and 30 \u{03A9}]
)

#figure(
  image("pic_for1_4.png", width: 70%),
  caption: [Diagram 4, 100V and 30 \u{03A9}]
)



Throughout this project, all circuit designs and simulations will be through LTspice. On a circuit simulation tool, we simply place our desired components and connect them via wires (forming a loop). We can then perform various simulations to obtain useful information about our circuit diagrams.

We perform an DC operating point analysis, resulting in the ".op" text. This procedure breaks down the circuit into pieces (known as nodes), and finds the current and voltage values at those locations. To be more specific, nodes are sections of the circuit that exists between 2 circuit components. Remember that current flows from the positive side of voltage source to its negative end. 

After running the selected simulation, a text file appears with these info for each diagrams. 

#line(length: 100%)
 Operating Point of Diagram 1, 10V and 10 \u{03A9} :

- V(n001): 10 voltage 

- I(R1)(Current leaving R1): 1 Amps

- I(V1)(Current leaving V1): -1 Amps
#line(length: 100%)

Operating Point of Diagram 2, 10V and 100 \u{03A9} : 

- V(n001): 10 voltage 

- I(R1)(Current leaving R1): 0.1 Amps

- I(V1)(Current leaving V1): -0.1 Amps
#line(length: 100%)
Operating Point of Diagram 3, 10V and 30 \u{03A9} : 

- V(n001): 10 voltage 

- I(R1)(Current leaving R1): 0.33 Amps

- I(V1)(Current leaving V1): -0.33 Amps
#line(length: 100%)
Operating Point of Diagram 4, 100V and 30 \u{03A9} : 

- V(n001): 100 voltage 

- I(R1)(Current leaving R1): 3.3 Amps

- I(V1)(Current leaving V1): -3.3 Amps
#line(length: 100%)

Let's focus on the first 2 lines of each diagram's output. What's a pattern that you notice for the first 2 diagrams in comparison to the last 2 diagrams. 

For our first two diagrams, our voltage remained constant (or the same) as our resistance increased by a factor of 10 (10 times larger). This leads to the current decreasing by a factor of 10 (1/10 as much).

For the last two diagrams, our resistance remains constant as our voltage increases by a factor of 10. This lead to the current increasing by a factor of 10. 

== 1.3) Ohm's Law
The diagrams above and their outputs hints towards a relationship between current, voltage, and resistance. This relationship is known as Ohm's law and it's defined through this equation: $("current") = ("voltage")/("resistance")$ or $(I)=(V)/(R)$. As voltage increases, so does the current. As the resistance increases, the current decreases.

== 1.35) "Wrong" Sign in LTspice "bug"
Consider this following circuit. 
#figure(
  image("trial.png"),
  caption: [1st circuit, 25 V voltage source and 5 \u{03A9} resistor]
)

The voltage source produces current from its positive end. This then travels through the resistor, slightly reducing the current's output. This current continues to travel till it returns to the voltage source but through its negative end.

We are given the voltage of 25V and the resistance of 5 \u{03A9}. This means we can employ ohm's law to find the current. $(I) = V/R = (25)/5 = 5$ amps. Let's simulate it (DC operating point).

#line(length: 100%)
- V(n001): 25
- I(R1): -5
- I(V1): -5
#line(length: 100%)

Let's repeat this same exercise with a nearly identical circuit with a negative voltage. 

#figure(
  image("trial2.png"),
  caption: [2nd circuit, -25 voltage source and 5 \u{03A9}]
)

Let's use ohm's law to find current. $I = (V)/R = (-25)/(5)= -5$ amps.

We perform the same simulation and obtain these results.

#line(length: 100%)

- V(n001): -25
- I(R1): 5
- I(V1): 5

#line(length: 100%)

Why does our calculated current values have the opposite signs as our simulated current values? Well, we are not wrong with our calculations. It's just that our software can sometimes define our current's direction differently than we do. I'm not sure why but I just wanted to warn you. 

If resistor was placed somewhere else along the wire, the sign would match our assumptions.

#grid(
  columns: 2,
  gutter: 1em,

  figure(
    image("trial3.png", width: 70%),
    caption: [1st circuit, same V and R]
  ),
  figure(
    image("trial4.png", width: 70%),
    caption: [1st circuit, same V and R]
  ),
)

This below is our simulation output for both.
#line(length: 100%)
- V(n001): 25
- I(R1): 5
- I(V1): -5
#line(length: 100%)

Look, the signs match!

But what if we can't move the resistor?

This may sound questionable but we can just mirror the resistor (flip it horizontally). Most resistors don't have a positive or negative end like a voltage source. 

Let's describe the wires extending out of a resistor as its legs. For simplicity, let our circuit be its components connected to a loop of wire. In scenario 1, the 1st leg of the resistor is in the front while the 2nd leg is in the back.The current will keep its sign as its passing through it. In scenario 2, we rotate that same resistor 180 degrees. Well, the incoming and outgoing current will have have the same sign. Resistors are not voltage sources, they don't have any mechanisms for changing the current's sign.

So let's just mirror the resistor and simulate it. 

#figure(
  image("trial5.png"),
  caption: [1sr circuit, same V and R, mirrored resistor ]
)

#line(length: 100%)

- V(n001): 25
- I(R1): 5
- I(V1): -5

#line(length: 100%)

Remember, just rotating the resistor would not affect anything about this circuit. The current is not being changed in ways. It's just that the software now perceives the current's direction in a similar manner that you do. 

This section was just made to reduce panic. And no, your current values from ohm's law are not wrong (after quintuple checking your algebra).

== 1.4) Equivalent Resistance 

You will regular encounter circuits with more than 1 resistor (the horror). Do you then apply ohm's law individually to each resistor ? You can but that would be tedious and filled with opportunities for errors. Can we have the same resistance with fewer resistors? Allow me to introduce equivalent resistance! 

Suppose we have a circuit with numerous resistors in row. These resistors are next to each, so we can say they are in series. How much would our current reduce after going through all of them? What's the least amount of resistors are needed to mimic the many resistor's resistance? What values would be give these resistors?

#figure(
  image("eq1_before.png", width: 70%),
  caption: [!0 V; 30 \u{03A9}, 20 \u{03A9}, and 10 \u{03A9} resistors]
)

Our current after going through all 3 resistors is 1/6 amps (obtained through simulation). How did we get this value? When using ohms law with 10 as our V and the individual resistances as R, we obtain current values of 1, $1/2$, and $1/3$. None of which match our measurement of 1/6 A. 

We current have an unsolved equation of : $(10 V)/R = 1/6$. After isolating for R, we obtain an resistance value of 60 \u{03A9}. Where is that 60 from? Well its the sum of 10,20, and 30. Let's see what happens when we replace all 3 resistors with a single 60 ohms resistor. 

#figure(
  image("eq1_after.png", width: 70%),
  caption: [Simplified circuit, 10 V and 60 \u{03A9} resistor]
)

After both simulating and using ohm's law , we obtain 1/6 A of current. This proves that the two circuits are identical. The act of reducing the number of resistors while keep the same resistance is known as finding the equivalent resistance. Resistors (or other components) right next to each other are said to be in series. We can equivalence resistance of resistors in series by adding them. 

Resistors that are "across" each other are said to be in parallel. By in parallel, the "line" which the resistors sit on  form parallel lines (either vertically or horizontally) with each other. The formula for equivalent resistance for resistors in parallel is a bit less intuitive. Its: $ 1/R_"eq" = (1/R_1+1/R_2+1/R_3+...+1/R_n) $. My preferred format (that's equivalent) is: $ R_"eq" = (1/R_1+1/R_2+1/R_3+...+ 1/R_n)^(-1) $

Let's do example problem to confirm this formula. 

#figure(
  image("eq2_before.png", width: 70%),
  caption: [10 V ; 10,15, and 25 \u{03A9} resistors]
)

The current is emitted from the positive side, travels throughout the circuit, and returns to the voltage's negative side. Before it goes through negative side, the current is positive. Our current from the simulations is negative since it went through that negative terminal. Our simulation gives us 2.06667 amps (before entering) or -2.06667 amps (after entering).

Now we need to an equivalent circuit with only 1 resistor. Using our formula for parallel, we obtain the value : $ R_"eq" = (1/10+1/15+1/25)^(-1) = 4.83871 \u{03A9} $.

#figure(
  image("eq2_after.png", width: 70%),
  caption: [Simplified circuit ; 10 V; 4.83871 \u{03A9} resistor]
)
 Now let's just use ohm's law to make sure the two circuits have the same current output. $I = V/R = 10/4.83871 = 2.06667$ amps. We have a match!

== 1.5) The Breadboard, Digital Multimeter, and DC Power Supply

=== 1.51) The Breadboard
The breadboard is a tool used to quickly build and test electronics circuits.

=== 1.52) Digital Multimeter (DMM)

The Digital Multimeter is a quick means of measuring quantities related to your circuit's components.

=== 1.53) DC Power Supply

DC Power Supply is an adjustable battery supplying us with ground (0V), positive (+), and negative (-) voltage.

#pagebreak()

== 1.6) Basic LED Circuit Project

#figure(
image("schem_rep_1.png", width: 120%),
caption:[Basic LED Circuit: 5V, 220 \u{03A9}, and LED diode ]
)

This is an more intuitive and breadboard resembling equivalent circuit. 

#figure(
image("schem_rep_2.png", width: 120%),
caption:[Simplified LED Circuit: 5V, 220 \u{03A9}, and LED diode ]
)

#pagebreak()
The following is the breadboard layout of LED circuit before its turned on (by connecting voltage to power lines).

#figure(
  image("scrn_shot_Led_img_1.png", width: 40%),
)

This is after that voltage is connected. It's on.

#figure(
  image("scrn_img_Led_img_4.png", width: 40%),
)

So what's going on? We have a Light Emitting Diode or LED in series with a resistor. An diode can prevent the flow of current based on where its facing. For an LED, the only difference is that it lights up when current is flowing through it. The resistor is to prevent the LED from being overwhelmed.

By providing an voltage from an battery or DC Power Supply, the light turn on. This is simply resistor circuit with an output device (like an LED) behind it. The volts, amps, and ohms just need to be appropriately selected.













  



