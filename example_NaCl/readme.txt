NOTE: 

1. The GW part of calculation is using task 802, i.e. ppa-G0W0. 

2. The keyworkd "cumu" in elk.in is on/off switch for cumulant calculation after GW. 
   Check src/addons/gwmain.f90 for the changes. 
   For comparison, src/addons/gwain.f90.org is the original un-modified code. 

3. In the submit.slurm, you need to change: 
                                            your_PI_account
                                            your_email_address@gmail.com
   to your account and your email address. 
