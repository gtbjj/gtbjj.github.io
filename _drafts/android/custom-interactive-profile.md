
There are quite a few [published profiles](http://forum.xda-developers.com/nexus-5x/general/guide-advanced-interactive-governor-t3269557/post64279960#post64279960) 
for the Interactive CPU governor, which is almost always 
the default governor on custom ROMs.  Such profiles are 
tuned to improve performance and battery life, so what are 
some reasons you'd want to "roll your own?"

The biggest reason is that everyone has different workload 
needs and therefore expectations / demands on their hardware.  
Perhaps you're a steady user throughout the day, or like 
me, you have short periods of high intensity use followed 
by long periods of inactivity.  A custom profile should 
help cater to your specific use needs.

In terms of performance, it is worth nothing to rave about 
20-something hours of battery life if your screen was only 
on 2% of the time.  This is where the Screen On Time (SOT) 
become a relevant statistic.  

Likewise, the best synthetic benchmark scores or total choss 
if your setup is so radically inefficient that you can't at 
least make it several hours without needing a charge.  So, 
here we go...

### Part 1: Nominal Clock Rates

For our initial purpose we'll only be talking about 
the "little" CPU.  We'll get to "big" later on.  
First, consider these categories of CPU clock seeds:

- Nominal Rate = minumum to acocmplish task without stutter or lag
- Efficient Rate = "most optimal frequency given the range of voltage requirements"

These are the things we want to find the *nominal frequency* for:

* idle
* scrolling
* video
* app loading
* high load

Do this by: 

* Opening [Kernel Auditor](https://play.google.com/store/apps/details?id=com.grarak.kerneladiutor) 
and *turn off all CPU cores except the first one*.  Turn off the "big" CPU entirely.
* Set the *performance governor* CPU governor
* Decrease the *maximum frequency* until you experience problems with the given task, then bump up then next normalized frequency.

On my Nexus 6P and the apps I use, I got the following 
values:

| idle | 384 MHz (lower on some kernels) |
| scrolling | 460 MHz |
| video | 768 MHz |
| app loading | 960 MHz |
| high load | 1555 MHz (higher on some kernels) |

### Part 2: Efficient Clock Rates

> "In its default state, the Interactive governor has a 
hair trigger that will raise and lower the clock rates, 
which means it spends too much time at unnecessary clock 
speeds, wasting power, and scales down too quickly, leading 
to stuttering performance. We will take advantage of a 
seldom used feature of the Interactive governor. 
Specifically, that with which it determines when it is okay 
to scale up to each higher clock rate, on a frequency by 
frequency basis." ~ soniCron

Two things we want to accomplish are *repsond as quickly as 
possible* and *exceed the desired clock rate for a given 
task as little as possible*.

By default, the Interactive governor only has one value for 
*above_highspeed_delay*; which defines how long the 
governor waits before escalating the clock speed beyond 
*highspeed_freq*.  **However**, the governor can take 
*multiple values for specified frequencies.*

For example, we want to fire out of idle as fast as 
possible, but we don't want to immediately fly to full 
power just because we unlocked the phone to check 
a missed text message.  Or, if something is running on the 
background, we probably don't need our CPU toped out to do 
it.

*above_highspeed_delay* takes arguments in the format of 
*frequency:delay*.  So, a value of *20000 460000:60000 600000:20000* 
tells Interactive to wait 20ms after the initial load, but 
stay a bit longer (60ms) on the 460 MHz frequency), and 
after 600 MHz it can scale up without limit.

##### Other Settings:

*timer_rate* - if idle is not being exceeded much, lower in 
increments of 5000 until out of idle, then increase by 
5000.

*above_highspeed_delay* - if *timer_rate* has matched or 
exceeded 50000 and "still won't stay below your desired 
frequency most of the time, set timer rate to 50000 and 
adjust the 20000 portion of the vaule upwards in increments 
of 5000" until stable.


### Part 3: Target Loads

##### Maximium Efficient Load

* use 90% of current rate before jumping to next rate
* /[ (nominal_rate * 0.9) / next highest clock rate /] * 100

##### Minimal Efficient Load

* (1 - next_highest_rate / clock_rate) * -100

##### For My Values:

| Nominal Rate | Max Eff. Load | Min Eff. Load |
|-------------------------------------------------------|
| 384000	| 92	| 62 |
| 460000	| 69	| 30 |
| 768000	| 80	| 13 |
| 960000	| 69	| 30 |
| 1555000	| N/A	| N/A |


##### Target Loads

The *target_loads* of Interactive will get set at the Max 
Efficient Load.  So, my entry for this setting might look 
something like:

```98 384000:92 460000:69 768000:80 960000:69```

### Part 4: Stuttering

If this si a problem, look into Interactive's 
*min_sample_time* settings.  Increase the value by 
increments of 5000 until your satisfied.  If you get t0 
100000 and still aren't satisfied, reset it to 40000 and 
increasae your idle frequency by one step. Reportedly, this 
will hurt your battery life though.

### Part 5: The Big CPU

inefficient, but very useful for switching and loading 
apps.  We only care about a few frequencies here:  384 MHz 
(minimum), 1958 MHz (maximum), and 1248 MHz (middle).

Apply these settings:

- *above_highspeed_delay* - 20000
- *high_speed_freq* - 1958000 (higher on some kernels)
- *min_sample_time* - 20000

Then, do what you did above for the little CPU in regard to 
*target_loads*.

-----

### Reference:

- [Original XDA Guide for Nexus 5X](http://forum.xda-developers.com/nexus-5x/general/guide-advanced-interactive-governor-t3269557)
- [Related Kernel Documentation](https://android.googlesource.com/kernel/common/+/a7827a2a60218b25f222b54f77ed38f57aebe08b/Documentation/cpu-freq/governors.txt)
- [Additional Profile Descriptions](http://forum.xda-developers.com/showpost.php?p=64645746&postcount=900)
- [Scripts and Profiles for Nexus 6P on GitHub](https://github.com/Alcolawl/Interactive-Governor-Tweaks/tree/master/angler)
