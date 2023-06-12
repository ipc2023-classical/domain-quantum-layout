# Quantum Circuit Layout Synthesis

Contributed by
Irfansha Shaik <Irfansha.Shaik@cs.au.dk>
and Jaco van de Pol <Jaco@cs.au.dk>, Aarhus University, Aarhus, Denmark.

This planning problem solves the Quantum Circuit Layout Problem. A quantum circuit consisting of binary CNOT operations 
on logical qubits must be mapped to some physical qubits, in such a way that CNOT operations only happen on physically connected
qubits. The local dependency order between CNOTS must be preserved. This can be achieved by inserting SWAP operations,
which are also limited to physically connected qubits. The goal is to find a solution that minimizes the required number of SWAPS.
This sometimes involves using extra (ancillary) qubits.

Based on: I. Shaik and J. van de Pol, _Optimal Layout Synthesis for Quantum Circuits as Classical Planning_, arXiv quant-ph 2304.12014,  	
https://doi.org/10.48550/arXiv.2304.12014

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
