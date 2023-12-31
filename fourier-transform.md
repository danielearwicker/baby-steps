# Fourier Transform

Given a real-valued function $f(x)$, and supposing it is periodic, e.g. it describes the sound of a bell ringing, you might ask what frequencies appear in the sound. In fact your ear-brain system is an adaptation for answering that very question, and if you listen carefully you can often discern several different notes within the sound of a bell.

What we're really asking is how "loud" the signal is at each frequency. We can detect this for a given frequency $\nu$ by multiplying the function by $e^{-i2\pi\nu x}$, in which:

-   the minus sign is purely a convention (and not a universal one)
-   $i$ is the magic ingredient that [makes it go round and round](./unit-circle.md)
-   $2\pi$ converts to radians
-   $\nu$ is the frequency
-   $x$ is the parameter to the function

So if $\nu$ is 1, the complex value performs a whole rotation as $x$ goes from $0$ to $1$, and again from $1$ to $2$, etc.

By itself this factor is a unit complex number, i.e. of "length" 1, but by multiplying it by the function we adjust its length so it oscillates "in and out" as it rotates, exactly like our signal:

$$f(x)e^{-i2\pi\nu x}$$

If the oscillations of $f$ don't coincide with the frequency $\nu$, the above expression will, averaged over all values of $x$, be about zero, there being no particular reason for the complex value to be biased in any direction. That is:

$$\int_{-\infty}^{\infty} f(x)e^{-i2\pi\nu x} dx \approx 0 $$

But if the oscillations do coincide, then there will be a bias; each time the oscillation of $f(x)$ reaches a maximum it will be on the same side of the circle traced by $e^{-i2\pi\nu x}$.

(A minor subtlety is that whenever $f(x)$ is at a negative minimum, $e^{-i2\pi\nu x}$ will be on the other side of the circle; however, multiplying it by the negative value of $f(x)$ will flip it round by $180\degree$, so both positive peaks and negative troughs will both contribute to the same biased direction.)

So we can define a complex-valued function of frequency:

$$
\hat{f}(\nu) = \int_{-\infty}^{\infty} f(x)e^{-i2\pi\nu x} dx
\tag{1}
$$

and this will be about zero for frequencies that don't appear in the function, and non-zero for frequencies that do appear. These values are _complex_ amplitudes; they tell us how loud the signal is at that frequency, but also their phase tells us how the signal is offset at that frequency.

As a shorthand we can write it as a fancy $\mathcal{F}$:

$$\hat{g} = \mathcal{F} g$$

We can do the opposite transformation:

$$
f(x) = \int_{-\infty}^{\infty} \hat{f}(\nu)e^{i2\pi\nu x} dv
\tag{2}
$$

Shorthand:

$$g = \mathcal{F}^{-1} \hat{g}$$

This pretty much literally says that you can make any function by adding together an infinite collection of oscillations at every possible frequency. You just need a (complex) function $\hat{f}(\nu)$ that tells you how "loud" each frequency needs to be.

By the way, note how when we do the integral over $\hat{f}$ in the inverse transform, we include negative values. What on earth is a negative frequency?! It's not that weird, really. It just makes the complex factor rotate the other way. This underscores the fact that the minus sign is just a convention. The integrals cover both "directions".

There's a special relationship between the positive and negative sides of the frequency spectrum. According to $(1)$, if you want the amplitude for frequency $-\nu$, it must be:

$$
\hat{f}(-v) = \int f(x)e^{i2\pi\nu x} dx
\tag{3}
$$

Which means $\hat{f}(-v)$ is the complex conjugate of $\hat{f}(v)$.

$$
\hat{f}(-v) = \left[ \hat{f}(v) \right]^*
$$

Therefore having done the hard word of computing one side, it is very easy to get the other side - it contains no different information.

Also, note that as we're integrating over all $x$ from $-\infty$ to $\infty$, we can negate $x$ through the integral without changing the result. So this produces the exact same frequency amplitudes as $(1)$:

$$\hat{f}(v) = \int f(-x)e^{i2\pi\nu x} dx$$

Suppose $f$ happens to be an even function:

$$f(-x) = f(x)$$

Then we can switch freely:

$$\hat{f}(v) = \int f(x)e^{i2\pi\nu x} dx$$

If we mirror the frequency:

$$\hat{f}(-v) = \int f(x)e^{-i2\pi\nu x} dx$$

But we've arrived back at $(1)$, meaning it must be perfectly symmetrical around $\nu = 0$ when applied to an even function. This means it must also be real at all frequencies - how else could all this be true?

$$
\hat{f}(-v) = \hat{f}(v) = \left[ \hat{f}(v) \right]^*
$$

Now suppose $f$ is odd:

$$f(-x) = -f(x)$$

By a similar argument, when we substitute:

$$
\hat{f}(v) = - \int f(x)e^{i2\pi\nu x}
dx
$$

And mirror:

$$
\hat{f}(-v) = - \int f(x)e^{-i2\pi\nu x}
dx
= -\hat{f}(v)
$$

If taking the complex conjugate is the same as negating, we must be talking about a purely imaginary number. So the transform of an odd function is imaginary and odd.

What happens if we take the Fourier transform of a pure $sin$ wave? Only a single frequency is present, so it must have the amplitude $1$ while all other frequencies are amplitude $0$. This is not a smooth curve, but rather a single spike. If we integrate it over all frequencies we get 1. This is known as the Dirac delta, $\delta$, and is often referred to as a function, or a "function" with scare-quotes. It has a number of strange properties if regarded as a function, so it's simpler to think of it as only ever appearing as a factor inside an integral.

We can move the spike from zero to the location of our choice, $\alpha$, with an expression like $\delta(x - \alpha)$. It's like the real number equivalent of the [kronecker delta](./kronecker-delta.md), though we write that slightly differently. You can think of Kroneker $\delta_{nm}$ as meaning the same thing as Dirac $\delta(n - m)$: if $n = m$, the result is $1$, otherwise $0$.

So if we have a set of complex amplitudes $A_n$ at frequencies separated by $\alpha$, we can put a spike at each:

$$
\hat{f}(\nu) =
\sum_n A_n \delta(\nu - n\alpha)
$$

The result is that the spectrum $\hat{f}(\nu)$ has spikes of the required amplitude at equally spaced frequencies. So in this way, $\delta(\nu - n\alpha)$ is like a logical test for whether frequency $\nu$ matches $n\alpha$, and if so, $\nu$ has amplitude $A_n$.
