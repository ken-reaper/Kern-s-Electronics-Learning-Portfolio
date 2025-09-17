#set text(
  size : 13pt
)

= Chapter 1: The Resistor and Basic Tools

== 1.1) What is Current?

Understanding current requires building upon a few physics topic. Let's begin. 

Atoms are composed of protons and neutrons as their core with electrons orbiting around them. This is an oversimplification but picture a satellite (like the moon) orbiting around a planet (like the Earth). Protons have a positive charge, neutrons have 0 charge, and electrons have the negative charge. Current and other electrical physics concepts are (mostly) the effects of these electrons.

Protons and electrons push and pull on each other, depending on their charge. 2 protons or 2 electrons would push each other away. 1 proton and 1 electron would move toward each other other. The closer they are in distance, the more powerful are their force interactions. The strength of the force between them can be calculated through Coulomb's law. 

This electric force is the result of the electric field. This electric field is a trait of a charged object. Perhaps you're more familiar to gravity. The electric field is to a charged object what a gravitational field is to an object with mass. The main difference is gravitational force usually pull objects towards it while electric force can push and pull. 

Potential energy exists for objects impacted by electromagnetism and gravitational forces. In our context, the potential energy (per charge) is the energy related to our electron's starting height when its stationary. If no force is applied, the potential energy (per charge) will remain the same and not move. Our potential energy (per charge) increases as our height becomes larger and decreases as our height is reduced. 

When is force is applied to an stationary object, its potential energy (per charge) becomes kinetic energy. Kinetic energy is the energy associated with an object that's moving. The more potential energy (per charge) we started with, the higher will be the resulting kinetic energy. If our potential energy (per charge) is 0, then so is our kinetic energy. 

Voltage or electrical potential difference (per charge) is the result of subtracting the potential energy per charge at point A from the potential energy per charge at point B. In order for current to exist between two points, its voltage (electrical potential difference per charge) must not be zero. A voltage of 0 would mean that the potential energy (per charge) at both points is identical (or both are 0). 

The sign of the voltage determines the flow of the current. Various conventions for the direction of current exist. A common one that we will follow is that positive(+) current exits from the + entry of the voltage source. This current will travel across the circuit and return to the voltage source through its negative(-) entry.

With these fundamental concepts in mind, we can define current.

Imagine a rectangular sheet of  any material. Through some means, we fill it with more electrons. One example is rubbing it against with a wool-like object. The electrons are dormant since no force is being applied upon them.

Then we add an voltage source to our system. This voltage source create electric fields that allow for electric force to occur. This force pushes the electrons from where they are to the ends of the sheet. 

These electrons moving meant that they carry their negative charge from one side to the other. Current is the amount of charge being moved through a subsection of the sheet over a period of time. $I("current")= (triangle.t q) / (triangle.t t)$ where q = charge and t = time.

This formula is somewhat limited since charge may not allows be consistent through each interval.To see how fast its changing between these points (or its rate of change), we use the derivative. This results in $I = (d/"dt")(q(t))$.

== 1.15) The Ball on the Hill 
Here's a lens to better understand the relationship between key terms above. 

#figure(
  image("slide_ch1.png", width: 70%),
  caption: [Ball on a hill, about to be pushed]
)

Imagine a ball on top of an hill. That ball is our electron. Without an voltage source, it would remain stationary. Our hill is composed of a smaller and larger right (90 degree) triangle. This forms 2 declining ramps that the ball (electron) will roll down through. These two inclines are connected through an rising curve. That curve incline serves as a ladder or stairs connecting 2 slides that are on the same path.

The potential energy (per charge) of the two triangle declines are their heights. The higher our heights and potential energy (per charge), the more energy that will be produced from the electrons going down the hills. Our potential difference (per charge) is the difference between the heights of the two inclines. It is through the language of electrical potential energy and potential difference (per charge) that our voltage value is defined. 

Once our system as a voltage source, that triggers a mechanism that pushes the ball down the hill. The mechanism triggered by the voltage is the electric field. The force being applied on the ball as its being pushed downhill is the electric force. 

In our example, we only have one electron going down the hill. In any other context, we will have a significantly larger number of electrons going down that path at the same time. Current can be defined how quickly the electrons (and their charge) past through a certain area of our hill. 

== 1.2) What is a Resistor?



