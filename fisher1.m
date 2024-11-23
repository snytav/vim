syms x;
syms t;
syms tau;
syms u0(x);
syms u1(x);
syms u2(x);
syms u3(x);

pi = sym(pi);

u0 = sin(pi*x);

s = diff(u0,tau)-diff(u0,x,2);

u1 = u0-int(s,tau,0,t);


u11= subs(u1,t,tau);

s2 = diff(u11,tau)-diff(u11,x,2);

u2 = u1-int(s2,tau,0,t);

u21 = subs(u2,t,tau);

s3 = diff(u21,tau)-diff(u21,x,2);

u3 = u2-int(s3,tau,0,t);

qq = 0;
