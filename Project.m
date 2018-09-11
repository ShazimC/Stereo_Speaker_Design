

syms Vin Va Vout C2 C3 L2 L3 R s
eq1 = Va/(L2*s) + (Va-Vin)*C2*s + (Va - Vout)/(L3*s) == 0;
eq2 = (Vout-Va)/(L3*s) + Vout*C3*s + Vout/R == 0;

eqns = [eq1, eq2];
sol = solve(eqns, [Vin, Vout]);

H(s) = sol.Vout/sol.Vin;