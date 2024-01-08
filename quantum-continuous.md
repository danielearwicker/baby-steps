## The Wave Function

One way to approach QM initially is to consider the position and momentum of an electron. These are continuous variables. To see how this fits with the formal model of quantum mechanics where the state of the system is captured in a vector, we'll need to stack up a few concepts.

We model this situation as a continuous complex-valued function of position and time, $\Psi(x, y, z, t)$, very often abbreviated to $\Psi$. We will sometimes also consider functions only of space, $\psi$. (This upper/lowercase distinction is quite widespread but not universally observed.)

By considering only one spatial dimension we can picture the wave function at one instant as a line, somewhere along which the electron could be found. At each point $x$ on the line there is an associated complex plane (visualised as normal to the line), with an arrow lying in it, pointing out from the line. This is the complex value of $\Psi$ at that position $x$ and time $t$.

So for example we could picture the arrows as making a corkscrew shape, rotating around the line such that the angle depends linearly on $x$, but the modulus of the complex value (the length of the arrow) happens to be constant in this example. This is the notional wave function for a free electron (no forces acting it) with a precisely defined momentum and therefore no defined position.

More generally, the arrow length will also vary with $x, t$. The arrow length at $x$ determines the likelihood that the electron will be found at $x$. More precisely, the modulus-squared of $\Psi$, which can be calculated with $\Psi^*\Psi$, is proportional to the probability density:

$$\rho(x) = \Psi^*\Psi \tag{1}$$

Given the electron is in some region $A$ between $x_1$ and $x_2$, the integral:

$$
\alpha =
\int_{x_1}^{x_2}
\Psi^*\Psi
\,dx
$$

is _proportional_ to the probability of finding the electron in $A$.

> Recall that the product of a complex number and its own complex conjugate is a real number, and here we are doing $\Psi(x)^*\Psi(x)$, using the single complex value at position $x$, so the result will be real. But the complex conjugate is not a general purpose magic way to get a real number from a product of any two complex numbers; $\Psi(x_1)^*\Psi(x_2)$ need not be real.

If we compute the same integral $\beta$ for some larger surrounding region $B$, we can compute the conditional probability:

$$
P(A|B) = \frac{\alpha}{\beta}
$$

That is: the probability of finding the electron in $A$ _given that_ it is somewhere in $B$ is given by the fraction $\alpha/\beta$.

If $\Psi$ is suitably behaved (square-integrable; roughly, it goes to zero at some distance and does not become infinite anywhere) then we can compute the integral over the whole of our one dimension of space:

$$
\alpha =
\int_{-\infty}^{+\infty}
\Psi^*\Psi
\,dx
$$

We can then include a factor of $1/\sqrt{\alpha}$ within $\Psi$ to "normalise" it, such that integrating the normalised $\Psi^*\Psi$ over some region will directly give us the absolute (unconditional) probability of finding the electron in that region.

Some interesting things to note at this early stage:

-   For the simple first example of the free electron with definite momentum, normalisation is not possible because the integral over all of space does not converge on a finite value.
-   A global change in the amplitude of the function (scaling the entire function by some complex constant) is not a physically significant change; there is a set of wave functions $a\Psi$ for any complex constant $a$, which all mean the same thing. What matters is how the amplitude varies from place to place (the same will turn out to be true for the complex phase).

## Schroedinger Equation

Any wave can be described as a sum of many simple harmonic waves. Each individual harmonic wave has _two_ parameters:

-   if we nominate a fixed point in space, there is a frequency of oscillation, $\nu$
-   if we freeze time, we can measure the wavelength, $\lambda$, the distance between adjacent peaks in space

These can be independently adjusted (do not be confused by the familiar example of EM waves, where wavelength and frequency are coupled due to the constant speed of light!)

So the wave can be described by the complex exponential:

$$
\Psi(x, t) = \exp \left[ 2\pi i(\frac{x}{\lambda} - \nu t) \right]
$$

Pick any fixed point in space, so $x$ is constant, and $\nu$ determines the rate of oscillation. Pick a fixed instant in time, so $t$ is constant, and $\lambda$ determines the distance between peaks. With both in play, we have a corkscrew complex wave pattern that is moving.

Anything we figure out for this model wave can be taken to be true for any linear combination of many such waves, in the sense that we can imagine decomposing some messy wave into a set of components, each component characterised only by two numbers.

Planck inferred the relationship between frequency and energy:

$$\nu = \frac{E}{h}$$

And de Broglie likewise for momentum and wavelength:

$$\lambda = \frac{h}{p}$$

So we can write the wave function very neatly in terms of energy and momentum instead:

$$
\Psi(x, t) = \exp \left[ {\frac{i(px - Et)}{\hbar}} \right]
$$

Nothing much has changed: as before, we have two parameters shaping a complex corkscrew wave. (We use $\hbar = h/2\pi$ for brevity because that combination isn't going away.) All that has changed is that we've got two parameters with a physical interpretation for something we've previously thought of as a "particle".

We can take the partial differential of the above w.r.t $t$ or $x$, and the way that works with exponentials is strangely illuminating.

Doing $t$ first:

$$
\frac{\partial \Psi}{\partial t}
=
-\frac{iE}{\hbar}
\exp \left[ {\frac{i(px - Et)}{\hbar}} \right]
$$

The constant factor is copied outside the exponential, which otherwise remains the same. So in fact:

$$
\frac{\partial \Psi}{\partial t}
=
-\frac{iE}{\hbar}
\Psi
$$

And (remembering that dividing by $-i$ is the same as multiplying by $i$):

$$
i\hbar \frac{\partial \Psi}{\partial t}
= E \Psi
$$

The exact same procedure with $x$ yields:

$$
- i\hbar \frac{\partial \Psi}{\partial x}
= p \Psi
$$

But we can also take the second derivative and get:

$$
- \hbar^2 \frac{\partial^2 \Psi}{\partial x^2}
= p^2 \Psi
$$

Returning to our physical interpretation, a free particle has energy that is purely kinetic, related to its momentum by:

$$
p^2 = 2m E
$$

(This is just $\frac{1}{2}mv^2$ smushed into the definition of momentum, $mv$.)

Substituting the Planck and de Broglie relations:

$$
\frac{\hbar}{2m} = \lambda^2\nu
$$

in general a corkscrew wave is governed by two independent parameters:

-   momentum, which goes with wavelength (and the $x$ coordinate)
-   energy, which goes with frequency (and the $t$ coordinate)

We've now coupled them, making them no longer independent. But we've also added a new parameter: the particle's mass. For a particle of a given mass, if you know the momentum you know the energy, and vice versa. Equivalently, if you know the wavelength you know the frequency, and vice versa.

Returning to the classical relationship between momentum, energy and mass, we can use it to rewrite our expression for $p^2 \Psi$, substituting into the R.H.S. to easily obtain:

$$
- \hbar^2 \frac{\partial^2 \Psi}{\partial x^2}
= 2mE\Psi
$$

And as we also have an expression for $E\Psi$, let's isolate that:

$$
E\Psi =
- \frac{\hbar^2}{2m} \frac{\partial^2 \Psi}{\partial x^2}
$$

and insert our $E\Psi$ expression:

$$
i\hbar \frac{\partial \Psi}{\partial t}
=
- \frac{\hbar^2}{2m} \frac{\partial^2 \Psi}{\partial x^2}
$$

So, recalling that $\Psi$ is an abbreviation for $\Psi(x, t)$, a complex valued function of space and time, now we have a differential equation that relates only these things:

-   $\hbar$, Planck's constant, a universal fixed real number with units of joules-seconds, very accurately determined by experiment, not something we can adjust to fit this equation to different scenarios
-   $i$, which just provides a $90\degree$ phase shift
-   the first partial derivative of $\Psi$ w.r.t. to time, which is another function of space and time that tells you how $\Psi$ is changing
-   $m$, the mass of the particle
-   the second partial derivative of $\Psi$ w.r.t. space.

This means that from a snapshot $\psi$ (at a specific instant of time) of the wave function of a particle with a known mass, so you have its shape in space, you can find the second derivative of that shape w.r.t. space, then multiply that by $i\hbar/2m$ and you have the the first partial derivative of $\Psi$ w.r.t. to time. That is, a snapshot contains complete information about the past and future of the wave; it tells you how to compute every past and future state.

So far, so kind-of rigorous. The situation becomes vaguer when we introduce a force field acting on the particle.

Schroedinger himself seems to have mostly taken a guess and found that the resulting equation agreed with several previously unexplained experimental results. Many widely used textbooks don't even give any background for it but merely state it. More advanced theory can be used to derive it, e.g. it is a low-energy approximation of QED.

The full classical account of the energy of a particle is:

$$
E = \frac{p^2}{2m} + V
$$

where the [potential](./potential.md) is a function $V(x)$. Realistically it will also be a function of $t$, but later we're going to pretend it isn't.

Some authors note that by multiplying the above throughout by $\Psi$:

$$
E\Psi = \frac{p^2{\Psi}}{2m} + V{\Psi}
$$

we obtain some scaffolding into which we can plug in our expressions for $E \Psi$ and $p^2 \Psi$:

$$
i\hbar \frac{\partial \Psi}{\partial t}
=
- \frac{\hbar^2}{2m} \frac{\partial^2 \Psi}{\partial x^2}
+ V{\Psi}
\tag{2}
$$

And this is the same as the free particle equation with the added $V\Psi$ term, and is the complete Schroedinger equation which governs the time evolution of $\Psi$.

The extra term doesn't change the important property that if you have a snapshot $\psi(x)$ taken of $\Psi(x, t)$ at a specific initial instant of time, then you know all future states (glossing over what happens when there is any kind of interaction, including measurements).

This is sometimes contrasted with Newton's 2nd law relating acceleration to force, acceleration being the second order derivative of the position w.r.t time. Each time we integrate we need to conjure up a constant of integration, and we have to integrate acceleration twice to get the position. The two constants we need to add are the position and velocity. Thus a snapshot of the position of a particle is not generally enough to know what is happening to it.

But a snapshot $\psi(x)$ taken of $\Psi(x, t)$ at some time is not just one number, but a continuous function giving a (complex) number at each point $x$ along the line, so it is generously endowed with information. If we decompose the snapshot into components, each one has its own wavelength.

And if we multiple $\Psi$ by some constant (possibly complex) factor, the result is still a solution to the function. Such arbitrary constant scale factors make no difference to the physical meaning; what matters is how the function varies from location to location (and from time to time). This is what allows us to normalise the function (where possible) to ensure that it sums to 1 over all of space.

## Time Evolution

We can say little here about wave functions unless they can be normalised, i.e. wave functions that tend to zero at infinity. Assuming this is the case, if we integrate the PDF over all of space:

$$
\int_{-\infty}^{+\infty}
\Psi^*\Psi
\,dx
$$

we expect the result to be constant (if normalised, it should always remain 1 as time passes), i.e.

$$
\frac{d}{d t}
\int_{-\infty}^{+\infty}
\Psi^*\Psi
\,dx
= 0
$$

Note that as we are integrating over $x$, outside the integral $x$ is not a variable. We can move the differentiation w.r.t. $t$ inside the integral, but only we change it to partial, because inside the integral $x$ is a variable:

$$
\int_{-\infty}^{+\infty}
\frac{\partial}{\partial t}
\Psi^*\Psi
\,dx
= 0
$$

Focusing on the inside of the integral, by the product rule:

$$
\frac{\partial}{\partial t} \, \Psi^*\Psi
=
\frac{\partial \Psi^*}{\partial t} \Psi
+
\frac{\partial \Psi}{\partial t} \Psi^*
$$

Now, the Schroedinger equation gives us an expression for the partial time derivative of the wave function by slightly rearranging $(2)$:

$$
\frac{\partial \Psi}{\partial t}
=
\frac{i \hbar}{2m} \frac{\partial^2 \Psi}{\partial x^2}
- \frac{i V}{\hbar}{\Psi}
$$

From this we can get the same for the complex conjugate:

$$
\frac{\partial \Psi^*}{\partial t}
=
- \frac{i \hbar}{2m} \frac{\partial^2 \Psi^*}{\partial x^2}
+ \frac{i V}{\hbar}{\Psi^*}
$$

Plugging those into our expression:

$$
\frac{\partial}{\partial t} \, \Psi^*\Psi
=
\left[
- \frac{i \hbar}{2m} \frac{\partial^2 \Psi^*}{\partial x^2}
+ \frac{i V}{\hbar}\Psi^*
\right] \Psi
+
\left[
\frac{i \hbar}{2m} \frac{\partial^2 \Psi}{\partial x^2}
- \frac{i V}{\hbar}\Psi

\right] \Psi^*
$$

Multiplying out:

$$
\frac{\partial}{\partial t} \, \Psi^*\Psi
=
- \frac{i \hbar}{2m} \frac{\partial^2 \Psi^*}{\partial x^2}
\Psi
+ \frac{i V}{\hbar}\Psi^*\Psi
+
\frac{i \hbar}{2m} \frac{\partial^2 \Psi}{\partial x^2}
\Psi^*
- \frac{i V}{\hbar}\Psi\Psi^*
$$

The second and fourth terms cancel each other:

$$
\frac{\partial}{\partial t} \, \Psi^*\Psi
=
- \frac{i \hbar}{2m} \frac{\partial^2 \Psi^*}{\partial x^2}
\Psi
+
\frac{i \hbar}{2m} \frac{\partial^2 \Psi}{\partial x^2}
\Psi^*
$$

Also there's a common factor we can pull out:

$$
\frac{\partial}{\partial t} \, \Psi^*\Psi
=
\frac{i \hbar}{2m}
\left[
\frac{\partial^2 \Psi}{\partial x^2}\Psi^*
- \frac{\partial^2 \Psi^*}{\partial x^2}\Psi
\right]
$$

Recall that we are working out an expression for this because it appears inside an integral over all space:

$$
\int_{-\infty}^{+\infty}
\frac{i \hbar}{2m}
\left[
\frac{\partial^2 \Psi}{\partial x^2}\Psi^*
- \frac{\partial^2 \Psi^*}{\partial x^2}\Psi
\right]
dx
$$

Now the fundamental theorem of calculus is that integration is the inverse of differentiation, so there is clearly some redundancy here in that we are taking the second partial differential w.r.t. $x$ only to then integrate over all $x$.

To make this explicit:

$$
\frac{\partial}{\partial t} \, \Psi^*\Psi
=
\frac{i \hbar}{2m} \
\left[
\frac{\partial}{\partial x}
\left(
\frac{\partial \Psi}{\partial x}\Psi^*
- \frac{\partial \Psi^*}{\partial x}\Psi
\right)
\right]
\tag{3}
$$

The integral and the partial differentiation w.r.t. $x$ cancel out to give us an expression that we can evaluate at the two limits and take the difference:

$$
\frac{d}{d t}
\int_{-\infty}^{+\infty}
\Psi^*\Psi
\,dx
=
\frac{i \hbar}{2m}
\left[
\frac{\partial \Psi}{\partial x}\Psi^*
- \frac{\partial \Psi^*}{\partial x}\Psi
\right]
\bigg\rvert_{-\infty}^{+\infty}
$$

If we do that, we will have an expression for the rate of change, w.r.t. to time, of the integral of $\Psi^*\Psi$ over all space.

But at these limits, we've said $\Psi$ goes to zero, so as to be normalisable, making the whole expression zero at those limits. So in fact we've shown that, as we wanted:

$$
\frac{d}{d t}
\int_{-\infty}^{+\infty}
\Psi^*\Psi
\,dx
= 0
$$

So if it is possible to normalise a wave function at all, and it satisfies $(2)$, then the constant of normalisation lives up to its name: it is the same for all time.

## Motion

Given this abstract notion of an electron being entirely represented by a complex-valued function of position, how can we make sense of an electron moving?

Supposing the wave function is more concentrated in some region, it makes sense to compute the [expectation value](./expectation-value.md) of the position variable:

$$
\langle x \rangle =
\int_{-\infty}^{+\infty}
x \, \rho(x)
\,dx
$$

Substituting our definition of $\rho$ from $(1)$:

$$
\langle x \rangle =
\int_{-\infty}^{+\infty}
x \, \Psi^*\Psi
\,dx
$$

remembering always that $\Psi$ is short for $\Psi(x, t)$, so $\langle x \rangle$ is also a function of $t$, and so this gives us a way of thinking about motion: the way the expectation value of the position changes with time.

$$
\frac{d}{dt} \langle x \rangle =
\frac{d}{dt}
\int_{-\infty}^{+\infty}
x \, \Psi^*\Psi
\,dx
$$

We can rearrange $(5)$ to move the derivative inside the integral, giving:

$$
\frac{d}{dt} \langle x \rangle =
\int_{-\infty}^{+\infty}
x \frac{\partial}{\partial t}
\, \Psi^*\Psi
\,dx
$$

Like before, it's the $t$-derivative of something that depends on $x$, inside the integral over $x$ we clarify that it is the partial derivative, and therefore $x$ is a constant for that derivative.

And borrowing from $(3)$ we can rewrite this as:

$$
\frac{d}{dt} \langle x \rangle =
\frac{i \hbar}{2m}
\int_{-\infty}^{+\infty}
x
\frac{\partial}{\partial x} \
\left(
\frac{\partial \Psi}{\partial x}\Psi^*
- \frac{\partial \Psi^*}{\partial x}\Psi
\right)
\,dx
$$

This isn't as simple as before where we cancelled out the integration and the differentiation, because of the pesky $x$. But the good news is this is the easiest ever opportunity for integration by parts. Recall:

$$
\int
u
\frac{dv}{dx}
dx = uv -
\int
v
\frac{du}{dx}
dx
$$

So $u$ is just $x$ and to get $v$ we have to calculate it at the limits:

$$
v =
\frac{\partial \Psi}{\partial x}\Psi^*
- \frac{\partial \Psi^*}{\partial x}\Psi
\bigg\rvert_{-\infty}^{+\infty}
$$

Plugging them in:

$$
x
\left(
\frac{\partial \Psi}{\partial x}\Psi^*
- \frac{\partial \Psi^*}{\partial x}\Psi
\right)
\bigg\rvert_{-\infty}^{+\infty}
-
\int_{-\infty}^{+\infty}
\left(
\frac{\partial \Psi}{\partial x}\Psi^*
- \frac{\partial \Psi^*}{\partial x}\Psi
\right)
\frac{dx}{dx}
dx
$$

As before, with $\Psi$ vanishing at infinity the first term can be removed, and of course $dx/dx$ is $1$. Finally the above is just the integral from our $\langle x \rangle$ expression, so:

$$
\frac{d}{dt} \langle x \rangle = -
\frac{i \hbar}{2m}
\int_{-\infty}^{+\infty}
\left(
\frac{\partial \Psi}{\partial x}\Psi^*
- \frac{\partial \Psi^*}{\partial x}\Psi
\right)
dx
$$

Having unwrapped one layer with integration by parts we can pull the same trick with $\frac{\partial \Psi^*}{\partial x}\Psi$, with $u = \Psi$ and $v = \Psi^*$, which once again means the $uv$ term is zero, leaving:

$$
-
\int_{-\infty}^{+\infty}
\frac{\partial \Psi}{\partial x}
\Psi^*
$$

So putting this back into $\langle x \rangle$:

$$
\frac{d}{dt} \langle x \rangle = -
\frac{i \hbar}{2m}
\int_{-\infty}^{+\infty}
\left(
\frac{\partial \Psi}{\partial x}\Psi^*
+ \frac{\partial \Psi}{\partial x}\Psi^*
\right)
dx
$$

The double minus means we're adding two identical terms, so:

$$
\frac{d}{dt} \langle x \rangle = -
\frac{i \hbar}{m}
\int_{-\infty}^{+\infty}
\frac{\partial \Psi}{\partial x}\Psi^*
dx
$$

If we think of the rate of change of $\langle x \rangle$ as the expectation value of the velocity, or $\langle v \rangle$, we can multiply by $m$ to get $\langle p \rangle$, which actually cancels the $m$.

$$
\langle p \rangle = -
i \hbar
\int_{-\infty}^{+\infty}
\frac{\partial \Psi}{\partial x}\Psi^*
dx
$$

Another way to look at what we're doing here is discovering operators. To apply an operator $\hat{O}$ and get its expectation value $\langle O \rangle$, the recipe is:

$$
\langle O \rangle =
\int_{-\infty}^{+\infty}
\Psi^*
\hat{O}
\Psi
\,dx
$$

Because $\Psi$ is a function of $x$ and $t$, by integrating over all $x$ we get a function of time, telling us the expectation value of whatever observable the operator represents.

To use this "operator sandwich" pattern, we just need to define our operators, and so far we have two.

The position operator $\hat{x}$ is just $x$ itself:

$$
\langle x \rangle =
\int_{-\infty}^{+\infty}
\Psi^*
\hat{x}
\Psi
\,dx
=
\int_{-\infty}^{+\infty}
\Psi^*
x
\Psi
\,dx
$$

The momentum operator $\hat{p}$ is $-ih\frac{\partial}{\partial x}$:

$$
\langle p \rangle =
\int_{-\infty}^{+\infty}
\Psi^*
\hat{p}
\Psi
\,dx
=
\int_{-\infty}^{+\infty}
\Psi^*
(-ih\frac{\partial}{\partial x})
\Psi
\,dx
$$

In fact all other observable quantities are represented by operators that can be defined in terms of $\hat{x}$ and $\hat{p}$.

## Time Independent Potentials

In the Schroedinger equation, if the potential $V$ is constant everywhere (and thus may as well be zero everywhere), it reduces to the free particle equation that fell out automatically from the fact that kinetic energy is tied to momentum. If you know the energy, you know the momentum and vice versa, which means that if you know the shape of a time-independent snapshot of the wave $\psi(x)$, then you know everything.

If the potential is a function it gets trickier. To understand the effect of varying $t$ and $x$ separately, we can suppose the existence of two functions $\psi(x)$ and $\phi(t)$ that when multiplied gives us $\Psi(x, t)$.

It is not generally true that this is possible. Even something as simple as $\Psi(x, t) = x + t$ can't separated. It's obviously true that solutions to the zero-potential Schroedinger equation can be separated, simply because we obtained it from the assumption:

$$
\Psi(x, t) = \exp \left[ {\frac{i(px - Et)}{\hbar}} \right]
$$

which can easily be written as the product of two separate functions of $x$ and $t$:

$$
= \exp \left[ {\frac{ipx}{\hbar}} \right]
\exp \left[ {\frac{-iEt}{\hbar}} \right]
$$

But when a potential is included it transpires that we can only use separation of variables if the potential is only a function of $x$, not $t$.

We want to consider a wider range of functions, so will only assume:

$$\Psi(x, t) = \psi(x) \phi(t)$$

Taking partials becomes ordinary differentiation, because the other factor is constant:

$$
\frac{\partial \Psi}{\partial t}
= \psi \frac{d \phi}{d t},
\frac{\partial^2 \Psi}{\partial x^2}
= \frac{d^2 \psi}{d x^2}  \phi
$$

So we just plug those into $(2)$:

$$
i\hbar
\psi \frac{d \phi}{d t}
=
- \frac{\hbar^2}{2m}
\frac{d^2 \psi}{d x^2}  \phi
+ V \psi \phi
$$

Dividing by $\psi \phi$:

$$
i\hbar
\frac{1}{\phi}
\frac{d \phi}{d t}
=
- \frac{\hbar^2}{2m}
\frac{d^2 \psi}{d x^2}
\frac{1}{\psi}
+ V
$$

To make this explicit, let's put the parameters on each function:

$$
i\hbar
\frac{1}{\phi(t)}
\frac{d \phi(t)}{d t}
=
- \frac{\hbar^2}{2m}
\frac{d^2 \psi(x)}{d x^2}
\frac{1}{\psi(x)}
+ V(x)
$$

The LHS only depends on $t$, the RHS only depends on $x$. This means if we hold $x$ constant, and therefore the RHS constant, this equation still holds even if we vary $t$! And of course vice versa. Which means both sides are equal to the same constant, and this is going turn out to be the energy $E$ as follows. Equating the LHS with $E$:

$$
i\hbar
\frac{1}{\phi}
\frac{d \phi}{d t}
= E
\implies
\frac{d \phi}{d t}
=
- \frac{Ei}{\hbar}
\phi
\implies
\phi = e^{-iEt/\hbar}
$$

The RHS isn't so neat, but:

$$
- \frac{\hbar^2}{2m}
\frac{1}{\psi}
\frac{d^2 \psi}{d x^2}
+ V
=
E
\implies
- \frac{\hbar^2}{2m}
\frac{d^2 \psi}{d x^2}
+ V\psi
=
E\psi
$$

Solutions for $\psi$ will depend on $V$ of course. But the whole wave function is therefore:

$$\Psi(x, t) = \psi(x) e^{-iEt/\hbar}$$

Why is this interesting? Because the more complicated space-sensitive part is frozen w.r.t. time, we can understand the time evolution by just looking at the extremely simple factor:

$$
e^{-iEt/\hbar}
$$

Whatever the solution to $\psi$, the complex value of every point in space is only changing by the above factor as time passes.

And that factor is really just $e^{i\theta}$ with the angle being $-Et/\hbar$, so we know the modulus of the value isn't changing; it's just going "round and round" clockwise in the complex plane.

And if the modulus isn't changing, the probability density isn't changing, so the particle isn't moving. Hence solutions of this type are known as _stationary states_. The expectation value of the position is fixed, and so all other observables' expectation values are also constant, including energy.

Speaking of which, the total energy expectation value (kinetic plus potential) is:

$$
\hat{H} =
-\frac{\hbar^2}{2m}
\frac{\partial^2}{\partial x^2}
+ V(x)
$$

Comparing this to our RHS differential equation:

$$
- \frac{\hbar^2}{2m}
\frac{d^2 \psi}{d x^2}
+ V\psi
=
E\psi
$$

So it's just:

$$
\hat{H}\psi
=
E\psi
$$

Which tells us that our constant $E$ is indeed the total energy: a properly normalised $\psi$ integrated over all space is $1$, so multiplying it by a constant gets you the definite value $E$, and that's the expectation value of the total energy operator $\bar{H}$.

All this is only true for the stationary states of separable $\Psi(x, t)$ wave functions, but we can add an infinite set of them to get other shapes:

$$
\Psi(x, t)
=
\sum_{n=1}^\infty
c_n
\psi_n
e^{-iE_nt/\hbar}
$$

So for each $n$ there's a complex constant $c_n$ to go with the stationary state $\psi_n$ and an energy level $E_n$ that controls how fast the global phase shift goes round and round.

Because we're adding complex values at each point in space, even though those component values each have a time-independent modulus, the sum of them does not. So this is a way to make non-stationary solutions. Wave packets that "move" can be composed by summing stationary states that do not.

## Wave Functions as Vectors

For stationary states $m$ and $n$:

$$
\int
\psi_m^* \psi_n dx = \delta_{nm}
$$

This does not mean that $\psi_m^* \psi_n$ is zero everywhere if $m \ne n$, but it does mean that for every non-zero value pointing in some direction in the complex plane, there's another value of the same modulus pointing the opposite way, to balance it out.

The above is a way of defining the [inner product](./vectors-inner-product.md) between two stationary states, and of showing that they are like orthogonal vectors in a [complex vector space](./vectors-complex.md) for that product.

In fact we can define our vector space for QM in two ways:

-   as an uncountable continuum of _scattering states_
-   As a countable infinity of _bound states_

### Scattering States

In the uncountable case of scattering states, the vector is a function of a continuous coordinate and cannot be reduced to anything more compact than that. This happens when the potential is absent and we have a physical state that moves freely through space as a pulse waveform. The inner product is defined by an integral:

$$
\langle \alpha | \beta \rangle
=
\int
\alpha^* \beta \,dx
$$

If we knew a particle's exact location, $\alpha$, our wave function of space $\psi(x)$ would have a single spike where $x = \alpha$ and be zero everywhere else. Alternatively if knew its exact momentum (and $p=h/\lambda$) our wave function would be a wave with a single wavelength. So we're dealing with [Fourier transforms](./fourier-transform.md). At these extremes of certainty/uncertainty, one domain has a simple wave of infinite extent, and the other domain has a spike representing that wave. It works either way round.

Thus far we've been working in "position space", using functions of $x$, but alternatively we could work in "momentum space", where the functions are $\phi(p)$. If we knew a particle's exact momentum, $\phi(p)$ would be a spike, whereas if we knew its exact position, $\phi(p)$ would be a single-component wave.

Either way, the point is that the elements of our vector space are functions of a continuous variable (a real number), and the inner product has to be an integral over that continuous variable.

## Bound States

In the countable case of bound states, a potential traps a particle and the measurable energies are quantised, the energy being the eigenvalue of the energy operator applied to the stationary state eigenfunction at that energy level.

The energy eigenfunctions serve as a set of basis vectors, and we can create a weighted sum of them to make any state. We can use those weightings as the components of a vector describing a state. That is, the state of the lowest energy level is a column vector of numbers where the first component is $1$ and all the other components are $0$.

The inner product of two vectors is the sum of the products of the components of the two vectors (taking care to always complex conjugate the first one):

$$
\langle \alpha | \beta \rangle
=
\sum_i
\alpha_i^* \beta_i
$$

So once we've established the basis and computed the eigenvalues, we can construct states that are combinations of the eigenvectors and figure out the probability of obtaining a given energy by summing, rather than integrating.

---

In both cases the vector space has infinite dimensions, though in the continuous version it's a bigger infinity. When properly normalised, the stationary state vectors form a basis, i.e. a set of orthonormal vectors. It's impossible to picture directly, but it is essentially analogous to the three orthogonal directions of Euclidean spacetime, each being a basis vector, which can be summed to make any other vector in the space.

The inner product is a means of finding how much two vectors point the same way. The inner product $\langle \vec{e_1}, \vec{v} \rangle$ between a basis vector $\vec{e_1}$ and some vector $\vec{v}$ gives you the component of $\vec{v}$ in the direction of $\vec{e_1}$. This way of describing it is particularly important because we can think of the basis vector [as a function](./tensors-as-functions.md) for extracting a coordinate.

All this remains true in both our infinite vectors spaces, though we have to take care to use the inner product as defined on complex vector spaces, where we take the complex conjugate of one side before we perform the dot product (or the integral equivalent), and this indeed is what we've being doing all along in our integrals.

Note that the extracted component will be complex in general, but when we use the inner product of a vector with itself to get the square of the modulus, the result is always real and positive (in fact, we finish off any solution by adding a constant scaling adjustment so comes out as modulus 1).
